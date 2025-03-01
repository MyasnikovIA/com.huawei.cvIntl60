.class public Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$b;,
        Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$d;,
        Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$c;,
        Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$a;,
        Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;
    }
.end annotation


# instance fields
.field private final A:LGeneralFunction/j;

.field private B:I

.field private C:I

.field private D:Landroid/os/Handler;

.field private E:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private a:I

.field private b:Landroid/content/Context;

.field private c:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$a;

.field private d:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$c;

.field private e:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$d;

.field private f:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$b;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/ImageView;

.field private i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Landroid/graphics/PointF;

.field private u:Landroid/graphics/PointF;

.field private v:Landroid/graphics/PointF;

.field private w:I

.field private x:I

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a:I

    .line 78
    iput-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b:Landroid/content/Context;

    .line 83
    iput-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->g:Landroid/widget/LinearLayout;

    .line 84
    iput-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->h:Landroid/widget/ImageView;

    .line 86
    iput-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    .line 88
    iput-boolean v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->j:Z

    .line 93
    iput v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->m:I

    .line 94
    iput v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->n:I

    .line 95
    iput v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->o:I

    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->p:J

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->q:I

    .line 98
    iput-boolean v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->r:Z

    .line 99
    iput-boolean v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->s:Z

    .line 101
    iput-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->t:Landroid/graphics/PointF;

    .line 102
    iput-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->u:Landroid/graphics/PointF;

    .line 103
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->v:Landroid/graphics/PointF;

    .line 105
    iput v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->w:I

    .line 106
    iput v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->x:I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->y:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->z:Ljava/util/Map;

    .line 110
    new-instance v0, LGeneralFunction/j;

    invoke-direct {v0}, LGeneralFunction/j;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->A:LGeneralFunction/j;

    .line 112
    iput v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->B:I

    .line 113
    iput v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->C:I

    .line 357
    new-instance v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$1;-><init>(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/os/Looper;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->D:Landroid/os/Handler;

    .line 840
    new-instance v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;

    invoke-direct {v0, p0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$4;-><init>(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->E:Landroid/view/View$OnTouchListener;

    .line 141
    iput-object p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b:Landroid/content/Context;

    .line 142
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 143
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 144
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 145
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->l:I

    .line 146
    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 614
    const/4 v1, -0x1

    .line 616
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->z:Ljava/util/Map;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    .line 618
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->z:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 620
    iget-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->z:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 626
    :goto_1
    return v0

    .line 618
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->o:I

    return v0
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(I)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 580
    if-eqz v0, :cond_0

    .line 581
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 582
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    check-cast v0, Ljava/util/Map$Entry;

    .line 585
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    :cond_0
    new-instance v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$3;

    invoke-direct {v0, p0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$3;-><init>(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 598
    return-object v1
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 352
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 353
    iput p1, v0, Landroid/os/Message;->what:I

    .line 354
    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->D:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    return-void
.end method

.method private a(IZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 430
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateViewByIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 432
    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    if-ne v0, p1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 436
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v0, v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->c:I

    sub-int v0, p1, v0

    :goto_1
    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v1, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->c:I

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_b

    .line 438
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->d(I)Landroid/view/View;

    .line 436
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    :cond_3
    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(IZ)V

    .line 447
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 448
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 449
    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v1, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->c:I

    sub-int/2addr v0, v1

    :goto_2
    iget v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    iget-object v5, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v5, v5, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->c:I

    add-int/2addr v1, v5

    if-gt v0, v1, :cond_5

    .line 451
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 453
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 456
    :cond_5
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v0, v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->c:I

    sub-int v0, p1, v0

    :goto_3
    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v1, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->c:I

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_7

    .line 458
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 460
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v1, v2

    .line 465
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 467
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 468
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 470
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->e(I)V

    .line 465
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 473
    :cond_9
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 475
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 478
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->d(I)Landroid/view/View;

    .line 473
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 483
    :cond_b
    iput p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    .line 484
    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(IZ)V

    .line 485
    if-eqz p2, :cond_0

    .line 487
    invoke-direct {p0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b()V

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 893
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->A:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnialLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 895
    if-nez p1, :cond_0

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thumbnialLoaded no thumbnial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 898
    invoke-direct {p0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    invoke-direct {p0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;->a(Z)V

    .line 903
    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->z:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    invoke-direct {p0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    invoke-direct {p0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i(I)V

    .line 919
    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->A:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 920
    return-void

    .line 911
    :cond_1
    invoke-direct {p0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;->a(Landroid/graphics/Bitmap;)V

    .line 912
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 917
    :cond_2
    const-string v0, "thumbnialLoaded view is delete , so ignore!"

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->e:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$d;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->e:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$d;

    iget v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    invoke-interface {v0, v1, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$d;->a(ILandroid/view/MotionEvent;)V

    .line 801
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a:I

    if-gt p2, v0, :cond_0

    .line 74
    const-string v0, "ListHorizontalScroll..."

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;II)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(II)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;IZ)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetKeyBlock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 692
    iput-boolean p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->r:Z

    .line 693
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->r:Z

    return v0
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 493
    if-ltz p1, :cond_0

    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget-object v0, v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 494
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 501
    .line 502
    int-to-float v0, p1

    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v1, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 503
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c(I)I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 781
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$a;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$a;

    iget v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    iget-object v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->g:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$a;->a(ILandroid/view/View;)V

    .line 785
    :cond_0
    return-void
.end method

.method private b(IZ)V
    .locals 2

    .prologue
    .line 673
    .line 674
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->h(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;->b()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 677
    if-eqz p2, :cond_1

    .line 678
    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;->b()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->B:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;->b()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private b(Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 924
    .line 925
    invoke-direct {p0, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->h(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 927
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    if-ne p2, v0, :cond_0

    .line 929
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 931
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->d:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$c;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->d:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$c;

    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$c;->a(I)V

    .line 793
    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->v:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 820
    const/4 v0, 0x1

    .line 824
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->j:Z

    return v0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->j:Z

    return p1
.end method

.method private c(I)I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v0, v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->d:I

    mul-int/2addr v0, p1

    .line 509
    return v0
.end method

.method static synthetic c(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->x:I

    return v0
.end method

.method static synthetic c(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->x:I

    return p1
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$b;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$b;

    invoke-interface {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$b;->a()Z

    move-result v0

    .line 811
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 830
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v1, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->d:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v1, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->d:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v1, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->e:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget v1, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->d:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 834
    const/4 v0, 0x1

    .line 837
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->s:Z

    return p1
.end method

.method static synthetic d(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->w:I

    return p1
.end method

.method static synthetic d(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->p:J

    return-wide v0
.end method

.method private d(I)Landroid/view/View;
    .locals 8

    .prologue
    .line 515
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->A:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 517
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v1

    .line 518
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget-object v0, v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;

    const/4 v2, 0x0

    iget-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v2, v3}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 519
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->E:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->y:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 524
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->z:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual {v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i(I)V

    .line 547
    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->A:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 548
    return-object v7

    .line 532
    :cond_0
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget-object v0, v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;->b(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;->b()I

    move-result v4

    .line 535
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget-object v0, v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;->b(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;->c()I

    move-result v5

    .line 536
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget-object v0, v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->b:Lui_Controller/CustomWidget/a;

    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;->a()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->k:I

    new-instance v6, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$2;

    invoke-direct {v6, p0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$2;-><init>(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)V

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;IIIILui_Controller/CustomWidget/a$a;)V

    goto :goto_0

    .line 544
    :cond_1
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->j(I)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 553
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->A:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 556
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->f(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;->a(Landroid/graphics/Bitmap;)V

    .line 560
    :cond_0
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->h(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 562
    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 564
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->z:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->y:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 566
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->A:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 567
    return-void
.end method

.method static synthetic e(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c()Z

    move-result v0

    return v0
.end method

.method private f(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->i:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;

    iget-object v0, v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$e;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;->a(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->v:Landroid/graphics/PointF;

    return-object v0
.end method

.method private g(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 603
    .line 604
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->y:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 605
    if-nez v0, :cond_0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 609
    :cond_0
    return-object v0
.end method

.method static synthetic h(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->w:I

    return v0
.end method

.method private h(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;
    .locals 2

    .prologue
    .line 631
    .line 632
    const/4 v0, 0x0

    .line 633
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->g(I)Landroid/view/View;

    move-result-object v1

    .line 634
    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;

    .line 637
    :cond_0
    return-object v0
.end method

.method private i(I)V
    .locals 2

    .prologue
    .line 935
    .line 936
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->h(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;

    move-result-object v0

    .line 937
    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->C:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 938
    return-void
.end method

.method private j(I)V
    .locals 3

    .prologue
    .line 942
    .line 943
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->h(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;

    move-result-object v0

    .line 944
    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 945
    invoke-virtual {v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 946
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 776
    const-string v0, "onClick"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 777
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 698
    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 699
    iget v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->x:I

    if-nez v0, :cond_0

    .line 702
    const/4 v0, 0x0

    .line 705
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->g:Landroid/widget/LinearLayout;

    .line 341
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4

    .prologue
    .line 756
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 758
    iget-wide v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->p:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->p:J

    .line 762
    iput p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->q:I

    .line 764
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->p:J

    .line 765
    iput p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->q:I

    .line 767
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->b(I)I

    move-result v0

    .line 769
    iget-boolean v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->s:Z

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(IZ)V

    .line 770
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 713
    invoke-direct {p0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return v0

    .line 717
    :cond_1
    invoke-direct {p0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    iget v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->x:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->x:I

    if-ne v1, v2, :cond_0

    .line 725
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 751
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 729
    :pswitch_1
    iput-boolean v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->s:Z

    .line 730
    iput v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->x:I

    .line 731
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->u:Landroid/graphics/PointF;

    if-nez v0, :cond_3

    .line 733
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->u:Landroid/graphics/PointF;

    .line 734
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->t:Landroid/graphics/PointF;

    .line 735
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->t:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 737
    :cond_3
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->u:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    .line 744
    :pswitch_2
    iput-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->u:Landroid/graphics/PointF;

    .line 745
    iput-object v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->t:Landroid/graphics/PointF;

    .line 746
    iput v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->x:I

    .line 747
    const/16 v0, 0x32

    invoke-direct {p0, v2, v0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(II)V

    .line 748
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onWindowFocusChanged(Z)V

    .line 346
    return-void
.end method
