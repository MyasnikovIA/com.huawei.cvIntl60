.class public Lcom/facebook/a/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Handler;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/a/b$b;->a:Ljava/lang/ref/WeakReference;

    .line 208
    iput-object p2, p0, Lcom/facebook/a/a/b$b;->c:Landroid/os/Handler;

    .line 209
    iput-object p3, p0, Lcom/facebook/a/a/b$b;->d:Ljava/util/HashMap;

    .line 210
    iput-object p4, p0, Lcom/facebook/a/a/b$b;->e:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/facebook/a/a/b$b;->c:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 439
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 440
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 441
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 442
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_1
    return-object v1
.end method

.method public static a(Lcom/facebook/a/a/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/a/a/a/a;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/a/a/c;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/a/b$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 295
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 296
    if-nez p1, :cond_0

    move-object v0, v6

    .line 359
    :goto_0
    return-object v0

    .line 300
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_2

    .line 302
    new-instance v0, Lcom/facebook/a/a/b$a;

    invoke-direct {v0, p1, v5}, Lcom/facebook/a/a/b$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_1
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 343
    check-cast p1, Landroid/view/ViewGroup;

    .line 344
    invoke-static {p1}, Lcom/facebook/a/a/b$b;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v7

    .line 345
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 346
    :goto_2
    if-ge v4, v8, :cond_7

    .line 347
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 348
    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/a/a/b$b;->a(Lcom/facebook/a/a/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 346
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 304
    :cond_2
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/a/a/c;

    .line 305
    iget-object v1, v0, Lcom/facebook/a/a/a/c;->a:Ljava/lang/String;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 307
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 308
    check-cast v0, Landroid/view/ViewGroup;

    .line 309
    invoke-static {v0}, Lcom/facebook/a/a/b$b;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v7

    .line 310
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 311
    :goto_3
    if-ge v4, v8, :cond_3

    .line 312
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 313
    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/a/a/b$b;->a(Lcom/facebook/a/a/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move-object v0, v6

    .line 324
    goto :goto_0

    .line 325
    :cond_4
    iget-object v1, v0, Lcom/facebook/a/a/a/c;->a:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 327
    new-instance v0, Lcom/facebook/a/a/b$a;

    invoke-direct {v0, p1, v5}, Lcom/facebook/a/a/b$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    .line 329
    goto :goto_0

    .line 332
    :cond_5
    invoke-static {p1, v0, p4}, Lcom/facebook/a/a/b$b;->a(Landroid/view/View;Lcom/facebook/a/a/a/c;I)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v6

    .line 333
    goto/16 :goto_0

    .line 337
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    .line 338
    new-instance v0, Lcom/facebook/a/a/b$a;

    invoke-direct {v0, p1, v5}, Lcom/facebook/a/a/b$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move-object v0, v6

    .line 359
    goto/16 :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/facebook/a/a/b$b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/a/a/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/a/a/b$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/facebook/a/a/b$b;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/a/a/a;

    .line 255
    iget-object v1, p0, Lcom/facebook/a/a/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/a/a/b$b;->a(Lcom/facebook/a/a/a/a;Landroid/view/View;)V

    .line 253
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 258
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/a/a/b$a;Landroid/view/View;Landroid/view/View;Lcom/facebook/a/a/a/a;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 500
    if-nez p4, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/a/a/b$a;->a()Landroid/view/View;

    move-result-object v5

    .line 504
    if-eqz v5, :cond_0

    invoke-static {v5, p3}, Lcom/facebook/a/a/a/f;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p1}, Lcom/facebook/a/a/b$a;->b()Ljava/lang/String;

    move-result-object v6

    .line 510
    invoke-static {v5}, Lcom/facebook/a/a/a/f;->g(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_3

    move v4, v1

    .line 512
    :goto_1
    if-eqz v4, :cond_4

    instance-of v3, v0, Lcom/facebook/a/a/c$a;

    if-eqz v3, :cond_4

    move v3, v1

    .line 514
    :goto_2
    if-eqz v3, :cond_5

    check-cast v0, Lcom/facebook/a/a/c$a;

    .line 516
    invoke-virtual {v0}, Lcom/facebook/a/a/c$a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 517
    :goto_3
    iget-object v1, p0, Lcom/facebook/a/a/b$b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    if-nez v0, :cond_0

    .line 521
    :cond_2
    invoke-static {p4, p2, v5}, Lcom/facebook/a/a/c;->a(Lcom/facebook/a/a/a/a;Landroid/view/View;Landroid/view/View;)Lcom/facebook/a/a/c$a;

    move-result-object v0

    .line 523
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 524
    iget-object v0, p0, Lcom/facebook/a/a/b$b;->d:Ljava/util/HashMap;

    invoke-virtual {p4}, Lcom/facebook/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v4, v2

    .line 511
    goto :goto_1

    :cond_4
    move v3, v2

    .line 512
    goto :goto_2

    :cond_5
    move v0, v2

    .line 516
    goto :goto_3
.end method

.method private a(Lcom/facebook/a/a/b$a;Landroid/view/View;Lcom/facebook/a/a/a/a;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 451
    if-nez p3, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/a/a/b$a;->a()Landroid/view/View;

    move-result-object v5

    .line 456
    if-eqz v5, :cond_0

    .line 461
    invoke-static {v5}, Lcom/facebook/a/a/a/f;->i(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_2

    invoke-static {v5, v0}, Lcom/facebook/a/a/a/f;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/a/a/b$b;->a(Lcom/facebook/a/a/b$a;Landroid/view/View;Landroid/view/View;Lcom/facebook/a/a/a/a;)V
    :try_end_0
    .catch Lcom/facebook/h; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    invoke-static {}, Lcom/facebook/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to attach auto logging event listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 468
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.facebook.react"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-virtual {p1}, Lcom/facebook/a/a/b$a;->b()Ljava/lang/String;

    move-result-object v6

    .line 474
    invoke-static {v5}, Lcom/facebook/a/a/a/f;->f(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_4

    move v4, v1

    .line 476
    :goto_1
    if-eqz v4, :cond_5

    instance-of v3, v0, Lcom/facebook/a/a/a$a;

    if-eqz v3, :cond_5

    move v3, v1

    .line 478
    :goto_2
    if-eqz v3, :cond_6

    check-cast v0, Lcom/facebook/a/a/a$a;

    .line 481
    invoke-virtual {v0}, Lcom/facebook/a/a/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 482
    :goto_3
    iget-object v1, p0, Lcom/facebook/a/a/b$b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    if-nez v0, :cond_0

    .line 486
    :cond_3
    invoke-static {p3, p2, v5}, Lcom/facebook/a/a/a;->a(Lcom/facebook/a/a/a/a;Landroid/view/View;Landroid/view/View;)Lcom/facebook/a/a/a$a;

    move-result-object v0

    .line 488
    invoke-virtual {v5, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 489
    iget-object v0, p0, Lcom/facebook/a/a/b$b;->d:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/facebook/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/facebook/h; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    move v4, v2

    .line 475
    goto :goto_1

    :cond_5
    move v3, v2

    .line 476
    goto :goto_2

    :cond_6
    move v0, v2

    .line 481
    goto :goto_3
.end method

.method private static a(Landroid/view/View;Lcom/facebook/a/a/a/c;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 366
    iget v0, p1, Lcom/facebook/a/a/a/c;->b:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/facebook/a/a/a/c;->b:I

    if-eq p2, v0, :cond_0

    move v0, v1

    .line 433
    :goto_0
    return v0

    .line 370
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/facebook/a/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 371
    iget-object v0, p1, Lcom/facebook/a/a/a/c;->a:Ljava/lang/String;

    const-string v2, ".*android\\..*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p1, Lcom/facebook/a/a/a/c;->a:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 373
    array-length v2, v0

    if-lez v2, :cond_1

    .line 374
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 376
    goto :goto_0

    :cond_1
    move v0, v1

    .line 379
    goto :goto_0

    :cond_2
    move v0, v1

    .line 382
    goto :goto_0

    .line 386
    :cond_3
    iget v0, p1, Lcom/facebook/a/a/a/c;->h:I

    sget-object v2, Lcom/facebook/a/a/a/c$a;->a:Lcom/facebook/a/a/a/c$a;

    .line 387
    invoke-virtual {v2}, Lcom/facebook/a/a/a/c$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_4

    .line 388
    iget v0, p1, Lcom/facebook/a/a/a/c;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v0, v2, :cond_4

    move v0, v1

    .line 389
    goto :goto_0

    .line 393
    :cond_4
    iget v0, p1, Lcom/facebook/a/a/a/c;->h:I

    sget-object v2, Lcom/facebook/a/a/a/c$a;->b:Lcom/facebook/a/a/a/c$a;

    .line 394
    invoke-virtual {v2}, Lcom/facebook/a/a/a/c$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_5

    .line 395
    iget-object v0, p1, Lcom/facebook/a/a/a/c;->d:Ljava/lang/String;

    .line 396
    invoke-static {p0}, Lcom/facebook/a/a/a/f;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 399
    goto :goto_0

    .line 403
    :cond_5
    iget v0, p1, Lcom/facebook/a/a/a/c;->h:I

    sget-object v2, Lcom/facebook/a/a/a/c$a;->d:Lcom/facebook/a/a/a/c$a;

    .line 404
    invoke-virtual {v2}, Lcom/facebook/a/a/a/c$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_7

    .line 405
    iget-object v2, p1, Lcom/facebook/a/a/a/c;->f:Ljava/lang/String;

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    .line 408
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 409
    goto/16 :goto_0

    .line 407
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 413
    :cond_7
    iget v0, p1, Lcom/facebook/a/a/a/c;->h:I

    sget-object v2, Lcom/facebook/a/a/a/c$a;->e:Lcom/facebook/a/a/a/c$a;

    .line 414
    invoke-virtual {v2}, Lcom/facebook/a/a/a/c$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_8

    .line 415
    iget-object v0, p1, Lcom/facebook/a/a/a/c;->g:Ljava/lang/String;

    .line 416
    invoke-static {p0}, Lcom/facebook/a/a/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 419
    goto/16 :goto_0

    .line 423
    :cond_8
    iget v0, p1, Lcom/facebook/a/a/a/c;->h:I

    sget-object v2, Lcom/facebook/a/a/a/c$a;->c:Lcom/facebook/a/a/a/c$a;

    .line 424
    invoke-virtual {v2}, Lcom/facebook/a/a/a/c$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_a

    .line 425
    iget-object v2, p1, Lcom/facebook/a/a/a/c;->e:Ljava/lang/String;

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    .line 428
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 429
    goto/16 :goto_0

    .line 427
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 433
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/a/a/a/a;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 261
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 286
    :cond_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/a/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    invoke-virtual {p1}, Lcom/facebook/a/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/a/a/b$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/a/a/a/a;->a()Ljava/util/List;

    move-result-object v2

    .line 272
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    .line 276
    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/facebook/a/a/b$b;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/a/a/b$b;->a(Lcom/facebook/a/a/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/a/b$a;

    .line 284
    invoke-direct {p0, v0, p2, p1}, Lcom/facebook/a/a/b$b;->a(Lcom/facebook/a/a/b$a;Landroid/view/View;Lcom/facebook/a/a/a/a;)V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/facebook/a/a/b$b;->a()V

    .line 244
    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/facebook/a/a/b$b;->a()V

    .line 249
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/facebook/internal/l;->a(Ljava/lang/String;)Lcom/facebook/internal/k;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/internal/k;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/internal/k;->i()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/a/a/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/a/b$b;->b:Ljava/util/List;

    .line 226
    iget-object v0, p0, Lcom/facebook/a/a/b$b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/facebook/a/a/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 228
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 234
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 237
    :cond_2
    invoke-direct {p0}, Lcom/facebook/a/a/b$b;->a()V

    goto :goto_0
.end method
