.class Landroid/support/v7/b/a/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/b/a/b$a;,
        Landroid/support/v7/b/a/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/b/a/b$b;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:J

.field private l:J

.field private m:Landroid/support/v7/b/a/b$a;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 73
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v7/b/a/b;->e:I

    .line 76
    iput v1, p0, Landroid/support/v7/b/a/b;->g:I

    .line 77
    iput v1, p0, Landroid/support/v7/b/a/b;->h:I

    .line 1172
    return-void
.end method

.method static a(Landroid/content/res/Resources;I)I
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1207
    if-nez p0, :cond_1

    move v0, p1

    .line 1208
    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0xa0

    :cond_0
    return v0

    .line 1207
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v7/b/a/b;->m:Landroid/support/v7/b/a/b$a;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Landroid/support/v7/b/a/b$a;

    invoke-direct {v0}, Landroid/support/v7/b/a/b$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/b/a/b;->m:Landroid/support/v7/b/a/b$a;

    .line 500
    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->m:Landroid/support/v7/b/a/b$a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/b/a/b$a;->a(Landroid/graphics/drawable/Drawable$Callback;)Landroid/support/v7/b/a/b$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 502
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget v0, v0, Landroid/support/v7/b/a/b$b;->C:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/b/a/b;->f:Z

    if-eqz v0, :cond_1

    .line 503
    iget v0, p0, Landroid/support/v7/b/a/b;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 505
    :cond_1
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/b/a/b$b;->G:Z

    if-eqz v0, :cond_6

    .line 507
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-object v0, v0, Landroid/support/v7/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 516
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 517
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/b/a/b$b;->z:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 518
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 519
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 520
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 522
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 524
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 525
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/b/a/b$b;->E:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 527
    :cond_4
    iget-object v0, p0, Landroid/support/v7/b/a/b;->b:Landroid/graphics/Rect;

    .line 528
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    if-eqz v0, :cond_5

    .line 529
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :cond_5
    iget-object v0, p0, Landroid/support/v7/b/a/b;->m:Landroid/support/v7/b/a/b$a;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 535
    return-void

    .line 509
    :cond_6
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/b/a/b$b;->J:Z

    if-eqz v0, :cond_7

    .line 510
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-object v0, v0, Landroid/support/v7/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 512
    :cond_7
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/b/a/b$b;->K:Z

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-object v0, v0, Landroid/support/v7/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 533
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/b/a/b;->m:Landroid/support/v7/b/a/b$a;

    invoke-virtual {v1}, Landroid/support/v7/b/a/b$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    throw v0
.end method

.method private a()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a/b$b;->a(Landroid/content/res/Resources;)V

    .line 593
    return-void
.end method

.method protected a(Landroid/support/v7/b/a/b$b;)V
    .locals 1

    .prologue
    .line 1155
    iput-object p1, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    .line 1157
    iget v0, p0, Landroid/support/v7/b/a/b;->g:I

    if-ltz v0, :cond_0

    .line 1158
    iget v0, p0, Landroid/support/v7/b/a/b;->g:I

    invoke-virtual {p1, v0}, Landroid/support/v7/b/a/b$b;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    .line 1159
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/b/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/b/a/b;->h:I

    .line 1166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 1167
    return-void
.end method

.method a(Z)V
    .locals 12

    .prologue
    const-wide/16 v10, 0xff

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 538
    iput-boolean v2, p0, Landroid/support/v7/b/a/b;->f:Z

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 541
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 542
    iget-wide v6, p0, Landroid/support/v7/b/a/b;->k:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    .line 543
    iget-wide v6, p0, Landroid/support/v7/b/a/b;->k:J

    cmp-long v0, v6, v4

    if-gtz v0, :cond_2

    .line 544
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/b/a/b;->e:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 545
    iput-wide v8, p0, Landroid/support/v7/b/a/b;->k:J

    move v0, v1

    .line 556
    :goto_0
    iget-object v3, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 557
    iget-wide v6, p0, Landroid/support/v7/b/a/b;->l:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    .line 558
    iget-wide v6, p0, Landroid/support/v7/b/a/b;->l:J

    cmp-long v3, v6, v4

    if-gtz v3, :cond_5

    .line 559
    iget-object v2, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 560
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 561
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/b/a/b;->h:I

    .line 562
    iput-wide v8, p0, Landroid/support/v7/b/a/b;->l:J

    .line 573
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Landroid/support/v7/b/a/b;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/b/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 576
    :cond_1
    return-void

    .line 547
    :cond_2
    iget-wide v6, p0, Landroid/support/v7/b/a/b;->k:J

    sub-long/2addr v6, v4

    mul-long/2addr v6, v10

    long-to-int v0, v6

    iget-object v3, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget v3, v3, Landroid/support/v7/b/a/b$b;->C:I

    div-int/2addr v0, v3

    .line 549
    iget-object v3, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    rsub-int v0, v0, 0xff

    iget v6, p0, Landroid/support/v7/b/a/b;->e:I

    mul-int/2addr v0, v6

    div-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v0, v2

    .line 551
    goto :goto_0

    .line 554
    :cond_3
    iput-wide v8, p0, Landroid/support/v7/b/a/b;->k:J

    :cond_4
    move v0, v1

    goto :goto_0

    .line 564
    :cond_5
    iget-wide v0, p0, Landroid/support/v7/b/a/b;->l:J

    sub-long/2addr v0, v4

    mul-long/2addr v0, v10

    long-to-int v0, v0

    iget-object v1, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget v1, v1, Landroid/support/v7/b/a/b$b;->D:I

    div-int/2addr v0, v1

    .line 566
    iget-object v1, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/b/a/b;->e:I

    mul-int/2addr v0, v3

    div-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v0, v2

    .line 568
    goto :goto_1

    .line 571
    :cond_6
    iput-wide v8, p0, Landroid/support/v7/b/a/b;->l:J

    goto :goto_1
.end method

.method a(I)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 430
    iget v2, p0, Landroid/support/v7/b/a/b;->g:I

    if-ne p1, v2, :cond_0

    .line 485
    :goto_0
    return v0

    .line 433
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 439
    iget-object v4, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget v4, v4, Landroid/support/v7/b/a/b$b;->D:I

    if-lez v4, :cond_8

    .line 440
    iget-object v4, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 441
    iget-object v4, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 443
    :cond_1
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 444
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 445
    iget v0, p0, Landroid/support/v7/b/a/b;->g:I

    iput v0, p0, Landroid/support/v7/b/a/b;->h:I

    .line 446
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget v0, v0, Landroid/support/v7/b/a/b$b;->D:I

    int-to-long v4, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/support/v7/b/a/b;->l:J

    .line 455
    :cond_2
    :goto_1
    if-ltz p1, :cond_9

    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget v0, v0, Landroid/support/v7/b/a/b$b;->j:I

    if-ge p1, v0, :cond_9

    .line 456
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a/b$b;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 457
    iput-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    .line 458
    iput p1, p0, Landroid/support/v7/b/a/b;->g:I

    .line 459
    if-eqz v0, :cond_4

    .line 460
    iget-object v4, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget v4, v4, Landroid/support/v7/b/a/b$b;->C:I

    if-lez v4, :cond_3

    .line 461
    iget-object v4, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget v4, v4, Landroid/support/v7/b/a/b$b;->C:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/support/v7/b/a/b;->k:J

    .line 463
    :cond_3
    invoke-direct {p0, v0}, Landroid/support/v7/b/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 469
    :cond_4
    :goto_2
    iget-wide v2, p0, Landroid/support/v7/b/a/b;->k:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_5

    iget-wide v2, p0, Landroid/support/v7/b/a/b;->l:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_6

    .line 470
    :cond_5
    iget-object v0, p0, Landroid/support/v7/b/a/b;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_a

    .line 471
    new-instance v0, Landroid/support/v7/b/a/b$1;

    invoke-direct {v0, p0}, Landroid/support/v7/b/a/b$1;-><init>(Landroid/support/v7/b/a/b;)V

    iput-object v0, p0, Landroid/support/v7/b/a/b;->j:Ljava/lang/Runnable;

    .line 482
    :goto_3
    invoke-virtual {p0, v1}, Landroid/support/v7/b/a/b;->a(Z)V

    .line 484
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->invalidateSelf()V

    move v0, v1

    .line 485
    goto :goto_0

    .line 448
    :cond_7
    iput-object v9, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 449
    iput v8, p0, Landroid/support/v7/b/a/b;->h:I

    .line 450
    iput-wide v6, p0, Landroid/support/v7/b/a/b;->l:J

    goto :goto_1

    .line 452
    :cond_8
    iget-object v4, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 453
    iget-object v4, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 466
    :cond_9
    iput-object v9, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    .line 467
    iput v8, p0, Landroid/support/v7/b/a/b;->g:I

    goto :goto_2

    .line 479
    :cond_a
    iget-object v0, p0, Landroid/support/v7/b/a/b;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/b/a/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a/b$b;->a(Landroid/content/res/Resources$Theme;)V

    .line 599
    return-void
.end method

.method c()Landroid/support/v7/b/a/b$b;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    return-object v0
.end method

.method public canApplyTheme()Z
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/support/v7/b/a/b;->g:I

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/support/v7/b/a/b;->e:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    .line 100
    invoke-virtual {v1}, Landroid/support/v7/b/a/b$b;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/v7/b/a/b$b;->f:I

    .line 611
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    .line 613
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v7/b/a/b;->b:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Landroid/support/v7/b/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->h()I

    move-result v0

    .line 348
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->g()I

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->j()I

    move-result v0

    .line 364
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->i()I

    move-result v0

    .line 356
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    .line 409
    :goto_0
    return v0

    .line 408
    :cond_1
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    .line 409
    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->l()I

    move-result v0

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 138
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 123
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/b/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 125
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 126
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 127
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 129
    :cond_0
    return v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 120
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->b()V

    .line 375
    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/b/a/b$b;->E:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->m()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    .line 252
    const/4 v0, 0x0

    .line 253
    iget-object v2, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 254
    iget-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/b/a/b;->h:I

    move v0, v1

    .line 259
    :cond_0
    iget-object v2, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 261
    iget-boolean v2, p0, Landroid/support/v7/b/a/b;->f:Z

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/b/a/b;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 265
    :cond_1
    iget-wide v2, p0, Landroid/support/v7/b/a/b;->l:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 266
    iput-wide v4, p0, Landroid/support/v7/b/a/b;->l:J

    move v0, v1

    .line 269
    :cond_2
    iget-wide v2, p0, Landroid/support/v7/b/a/b;->k:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 270
    iput-wide v4, p0, Landroid/support/v7/b/a/b;->k:J

    .line 273
    :goto_0
    if-eqz v1, :cond_3

    .line 274
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->invalidateSelf()V

    .line 276
    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 619
    iget-boolean v0, p0, Landroid/support/v7/b/a/b;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 620
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->c()Landroid/support/v7/b/a/b$b;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Landroid/support/v7/b/a/b$b;->a()V

    .line 622
    invoke-virtual {p0, v0}, Landroid/support/v7/b/a/b;->a(Landroid/support/v7/b/a/b$b;)V

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/b/a/b;->i:Z

    .line 625
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 224
    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->d()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/b/a/b$b;->d(II)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 325
    :goto_0
    return v0

    .line 322
    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    goto :goto_0

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 314
    :goto_0
    return v0

    .line 311
    :cond_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 385
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/support/v7/b/a/b;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/b/a/b;->e:I

    if-eq v0, p1, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/b/a/b;->f:Z

    .line 144
    iput p1, p0, Landroid/support/v7/b/a/b;->e:I

    .line 145
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 146
    iget-wide v0, p0, Landroid/support/v7/b/a/b;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/b/a/b;->a(Z)V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/b/a/b$b;->E:Z

    if-eq v0, p1, :cond_0

    .line 237
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iput-boolean p1, v0, Landroid/support/v7/b/a/b$b;->E:Z

    .line 238
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-boolean v1, v1, Landroid/support/v7/b/a/b$b;->E:Z

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 243
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/b/a/b$b;->G:Z

    .line 173
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-object v0, v0, Landroid/support/v7/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 174
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iput-object p1, v0, Landroid/support/v7/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    .line 175
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/b/a/b$b;->z:Z

    if-eq v0, p1, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iput-boolean p1, v0, Landroid/support/v7/b/a/b$b;->z:Z

    .line 164
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-boolean v1, v1, Landroid/support/v7/b/a/b$b;->z:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 283
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v7/b/a/b;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/v7/b/a/b;->b:Landroid/graphics/Rect;

    .line 292
    :goto_0
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 295
    :cond_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Landroid/support/v7/b/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/b/a/b$b;->J:Z

    .line 184
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-object v0, v0, Landroid/support/v7/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 185
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iput-object p1, v0, Landroid/support/v7/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    .line 186
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 188
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/b/a/b$b;->K:Z

    .line 193
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iget-object v0, v0, Landroid/support/v7/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 194
    iget-object v0, p0, Landroid/support/v7/b/a/b;->a:Landroid/support/v7/b/a/b$b;

    iput-object p1, v0, Landroid/support/v7/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    .line 195
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 197
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .prologue
    .line 396
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 397
    iget-object v1, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Landroid/support/v7/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 400
    :cond_0
    iget-object v1, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 403
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v7/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Landroid/support/v7/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 392
    :cond_0
    return-void
.end method
