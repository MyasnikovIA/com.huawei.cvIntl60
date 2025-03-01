.class public Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$c;,
        Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;,
        Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;,
        Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;,
        Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;,
        Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/PointF;

.field private B:Landroid/graphics/PointF;

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/util/Map;
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

.field private G:Ljava/util/Map;
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

.field private final H:LGeneralFunction/j;

.field private I:I

.field private J:Z

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

.field private O:Landroid/os/Handler;

.field private P:Landroid/view/View$OnTouchListener;

.field public a:F

.field private b:Landroid/content/Context;

.field private c:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;

.field private d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;

.field private e:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;

.field private f:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;

.field private g:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$c;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:F

.field private v:Landroid/graphics/Matrix;

.field private w:Landroid/graphics/Matrix;

.field private x:Landroid/graphics/PointF;

.field private y:Landroid/graphics/PointF;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a:F

    .line 90
    iput-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b:Landroid/content/Context;

    .line 96
    iput-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h:Landroid/widget/LinearLayout;

    .line 98
    iput-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    .line 100
    iput-boolean v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j:Z

    .line 104
    iput v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->m:I

    .line 105
    iput v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n:I

    .line 106
    iput v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->o:I

    .line 107
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->p:J

    .line 108
    iput v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->q:I

    .line 109
    iput v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->r:I

    .line 110
    iput v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->s:I

    .line 111
    iput-boolean v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->t:Z

    .line 112
    const v0, 0x3ca3d70a    # 0.02f

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->u:F

    .line 115
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->v:Landroid/graphics/Matrix;

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->w:Landroid/graphics/Matrix;

    .line 117
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->x:Landroid/graphics/PointF;

    .line 118
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->y:Landroid/graphics/PointF;

    .line 121
    iput-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->A:Landroid/graphics/PointF;

    .line 122
    iput-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->B:Landroid/graphics/PointF;

    .line 123
    iput v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->C:I

    .line 124
    iput v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->D:I

    .line 125
    iput v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->E:I

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    .line 129
    new-instance v0, LGeneralFunction/j;

    invoke-direct {v0}, LGeneralFunction/j;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    .line 131
    iput v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->I:I

    .line 133
    iput-boolean v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->J:Z

    .line 134
    iput v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->K:I

    .line 135
    iput-boolean v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->L:Z

    .line 136
    iput-boolean v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->M:Z

    .line 138
    iput-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->N:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 418
    new-instance v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$1;-><init>(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/os/Looper;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->O:Landroid/os/Handler;

    .line 1079
    new-instance v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;

    invoke-direct {v0, p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;-><init>(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->P:Landroid/view/View$OnTouchListener;

    .line 171
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b:Landroid/content/Context;

    .line 172
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 173
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 174
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 175
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->l:I

    .line 176
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F
    .locals 3

    .prologue
    .line 1357
    if-nez p1, :cond_0

    .line 1359
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1365
    :goto_0
    return v0

    .line 1361
    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    int-to-float v0, v0

    .line 1362
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->e:I

    int-to-float v1, v1

    .line 1363
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1361
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1364
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;F)F
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->z:F

    return p1
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->o:I

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
    .line 715
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 717
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 718
    if-eqz v0, :cond_0

    .line 719
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 720
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    check-cast v0, Ljava/util/Map$Entry;

    .line 723
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 728
    :cond_0
    new-instance v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$4;

    invoke-direct {v0, p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$4;-><init>(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 737
    return-object v1
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(ILjava/lang/Object;I)V

    .line 408
    return-void
.end method

.method private a(ILandroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;

    invoke-interface {v0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;->a(ILandroid/graphics/Bitmap;)V

    .line 997
    :cond_0
    return-void
.end method

.method private a(ILandroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;

    invoke-interface {v0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;->a(ILandroid/graphics/PointF;)V

    .line 1032
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/Object;I)V
    .locals 4

    .prologue
    .line 412
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 413
    iput p1, v0, Landroid/os/Message;->what:I

    .line 414
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->O:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 416
    return-void
.end method

.method private a(IZ)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 546
    .line 547
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

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 548
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    if-ne v0, p1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    if-ne v0, v6, :cond_3

    .line 552
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    sub-int v0, p1, v0

    :goto_1
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_b

    .line 554
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 556
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k(I)Landroid/view/View;

    .line 552
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 562
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 563
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    sub-int/2addr v0, v1

    :goto_2
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    iget-object v5, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v5, v5, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    add-int/2addr v1, v5

    if-gt v0, v1, :cond_5

    .line 566
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 571
    :cond_5
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    sub-int v0, p1, v0

    :goto_3
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_7

    .line 573
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 575
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v1, v2

    .line 580
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 582
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 583
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 585
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->l(I)V

    .line 580
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 588
    :cond_9
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 590
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 593
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k(I)Landroid/view/View;

    .line 588
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 598
    :cond_b
    iput p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    .line 601
    iput v6, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->s:I

    .line 602
    if-eqz p2, :cond_0

    .line 603
    invoke-direct {p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i()V

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1247
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainImageLoaded:"

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

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 1249
    if-eqz p1, :cond_0

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecycle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 1251
    :cond_0
    if-nez p1, :cond_1

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainImageLoaded no image:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 1254
    invoke-virtual {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1256
    invoke-virtual {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->a(Z)V

    .line 1259
    :cond_1
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1261
    invoke-virtual {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->b(Landroid/graphics/Bitmap;)V

    .line 1262
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c(Landroid/graphics/Bitmap;I)V

    .line 1264
    invoke-virtual {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1266
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    if-ne p2, v0, :cond_2

    .line 1267
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->K:I

    if-nez v0, :cond_2

    .line 1268
    invoke-direct {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->p(I)V

    .line 1282
    :cond_2
    :goto_0
    invoke-direct {p0, p2, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(ILandroid/graphics/Bitmap;)V

    .line 1283
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 1284
    return-void

    .line 1275
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainImageLoaded view is delete , recycle bitmap!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 1276
    if-eqz p1, :cond_2

    .line 1277
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1278
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 1548
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 1549
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 1550
    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1551
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->f:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->f:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    invoke-interface {v0, v1, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;->a(ILandroid/view/MotionEvent;)V

    .line 1040
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 87
    const-string v0, "SingleHorizontalScrollView"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h(I)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;II)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(II)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;ILandroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(ILandroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;ILjava/lang/Object;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;Landroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Z)V

    return-void
.end method

.method private a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;)V
    .locals 4

    .prologue
    .line 1479
    .line 1481
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1483
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a()F

    move-result v1

    .line 1484
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    iget v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->b:F

    .line 1486
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1488
    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    .line 1490
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1491
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1503
    :goto_0
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v1

    iget-object v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1504
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1505
    if-nez v0, :cond_0

    .line 1506
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1508
    :cond_0
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v1

    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    iget-object v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F

    move-result v0

    iput v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->c:F

    .line 1509
    return-void

    .line 1493
    :cond_1
    iget v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1496
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->v:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1500
    :cond_2
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->v:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    iget-object v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;Landroid/graphics/PointF;)V
    .locals 6

    .prologue
    .line 1428
    .line 1430
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v0

    iget v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->b:F

    .line 1432
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 1434
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1441
    :goto_0
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1442
    if-nez v1, :cond_0

    .line 1443
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1445
    :cond_0
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    iget-object v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1446
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F

    move-result v3

    iput v3, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->b:F

    .line 1447
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F

    move-result v3

    iput v3, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->c:F

    .line 1448
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 1449
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    iget-object v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1450
    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    iget-object v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F

    move-result v1

    iput v1, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->c:F

    .line 1452
    :cond_1
    return-void

    .line 1438
    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 801
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

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 802
    iput-boolean p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->t:Z

    .line 803
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1369
    invoke-virtual {p0, v0, v0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(ZZLandroid/graphics/Bitmap;Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->D:I

    return p1
.end method

.method static synthetic b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->O:Landroid/os/Handler;

    return-object v0
.end method

.method private b(IZ)Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 781
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    iget-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->e:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 782
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 783
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->P:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 786
    if-eqz p2, :cond_0

    .line 787
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 790
    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    return-object v1

    .line 789
    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private b(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 947
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->q:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_0

    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockKeyAndSmoothScroll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 950
    iput p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->r:I

    .line 951
    invoke-direct {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Z)V

    .line 953
    :cond_0
    invoke-virtual {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->smoothScrollTo(II)V

    .line 954
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;I)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1288
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 1289
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

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 1290
    if-nez p1, :cond_0

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thumbnialLoaded no thumbnial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 1293
    invoke-virtual {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1295
    invoke-virtual {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->a(Z)V

    .line 1298
    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1300
    invoke-virtual {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1302
    invoke-direct {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->q(I)V

    .line 1317
    :cond_1
    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 1318
    return-void

    .line 1306
    :cond_2
    invoke-virtual {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->a(Landroid/graphics/Bitmap;)V

    .line 1307
    invoke-virtual {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1309
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 1315
    :cond_3
    const-string v0, "thumbnialLoaded view is delete , so ignore!"

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 1057
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->x:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    int-to-float v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1059
    const/4 v0, 0x1

    .line 1063
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j:Z

    return p1
.end method

.method static synthetic c(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Landroid/view/MotionEvent;)F

    move-result v0

    return v0
.end method

.method static synthetic c(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    .line 1322
    .line 1324
    invoke-direct {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;

    move-result-object v0

    .line 1325
    invoke-virtual {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v1

    .line 1326
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    iget-object v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1327
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F

    move-result v3

    iput v3, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->b:F

    .line 1328
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F

    move-result v3

    iput v3, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->c:F

    .line 1329
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->b()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1330
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->b()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1331
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1332
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v1

    iget-object v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1333
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1334
    return-void
.end method

.method private c(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1513
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1516
    const/4 v1, 0x0

    .line 1519
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1520
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1521
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1522
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 1523
    iget-object v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v4, v4, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    .line 1525
    int-to-float v5, v4

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return v0

    .line 1529
    :cond_1
    iget v2, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    .line 1533
    iget v2, v3, Landroid/graphics/RectF;->right:F

    int-to-float v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/high16 v2, 0x41800000    # 16.0f

    .line 1069
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->x:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1071
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->x:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1073
    const/4 v0, 0x1

    .line 1076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j:Z

    return v0
.end method

.method private d(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1542
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 1543
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 1544
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static synthetic d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->C:I

    return p1
.end method

.method static synthetic d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->p:J

    return-wide v0
.end method

.method static synthetic d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    return v0
.end method

.method static synthetic e(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->E:I

    return p1
.end method

.method static synthetic f(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->D:I

    return v0
.end method

.method static synthetic f(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 369
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 371
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Z)V

    .line 372
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 373
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    .line 374
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReleaseViews S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 377
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 379
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->l(I)V

    .line 377
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 381
    :cond_0
    const-string v0, "ReleaseViews E"

    invoke-direct {p0, v0, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 383
    :cond_1
    return-void
.end method

.method private g(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 458
    .line 459
    invoke-virtual {p0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h:Landroid/widget/LinearLayout;

    .line 460
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 461
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 462
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move v0, v1

    .line 465
    :goto_0
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget-object v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    invoke-virtual {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 467
    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(IZ)Landroid/widget/LinearLayout;

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_0
    invoke-direct {p0, p1, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(IZ)V

    .line 474
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(I)I

    move-result v0

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->o:I

    .line 476
    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(II)V

    .line 477
    return-void
.end method

.method static synthetic g(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j()Z

    move-result v0

    return v0
.end method

.method private h(I)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 481
    .line 483
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->s:I

    if-eq v0, p1, :cond_9

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateMainImageByIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 486
    iput p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->s:I

    move v7, v8

    .line 487
    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ge v7, v0, :cond_9

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateMainImageByIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 490
    rem-int/lit8 v0, v7, 0x2

    if-nez v0, :cond_5

    .line 491
    sub-int v2, p1, v7

    .line 494
    :goto_1
    invoke-direct {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 496
    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->g()Z

    move-result v0

    if-nez v0, :cond_6

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateMainImageByIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 499
    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->c()I

    move-result v4

    .line 502
    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->d()I

    move-result v5

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateMainImageByIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lImageWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lImageHeight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 504
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->b:Lui_Controller/CustomWidget/a;

    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->b()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    new-instance v6, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$2;

    invoke-direct {v6, p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$2;-><init>(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)V

    invoke-virtual/range {v0 .. v6}, Lui_Controller/CustomWidget/a;->a(Ljava/lang/String;IIIILui_Controller/CustomWidget/a$a;)V

    .line 527
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->L:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->M:Z

    if-eqz v0, :cond_4

    .line 529
    :cond_1
    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 531
    iget-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->L:Z

    if-eqz v0, :cond_2

    .line 532
    invoke-direct {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->o(I)V

    .line 533
    :cond_2
    iget-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->M:Z

    if-eqz v0, :cond_3

    .line 534
    invoke-direct {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->p(I)V

    .line 536
    :cond_3
    iput-boolean v8, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->L:Z

    .line 537
    iput-boolean v8, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->M:Z

    .line 487
    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move p1, v2

    goto/16 :goto_0

    .line 493
    :cond_5
    add-int v2, p1, v7

    goto/16 :goto_1

    .line 513
    :cond_6
    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 516
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    if-ne v2, v0, :cond_8

    .line 517
    invoke-direct {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->p(I)V

    .line 524
    :cond_7
    :goto_3
    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 521
    :cond_8
    invoke-direct {p0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->o(I)V

    goto :goto_3

    .line 542
    :cond_9
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->t:Z

    return v0
.end method

.method static synthetic h(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->E:I

    return v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 985
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;->a(ILandroid/view/View;)V

    .line 989
    :cond_0
    return-void
.end method

.method private i(I)Z
    .locals 1

    .prologue
    .line 608
    if-ltz p1, :cond_0

    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 609
    const/4 v0, 0x1

    .line 611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j(I)I
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    mul-int/2addr v0, p1

    .line 624
    return v0
.end method

.method static synthetic j(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->x:Landroid/graphics/PointF;

    return-object v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->g:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$c;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->g:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$c;

    invoke-interface {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$c;->a()Z

    move-result v0

    .line 1050
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->w:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private k(I)Landroid/view/View;
    .locals 8

    .prologue
    .line 640
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 641
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

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 642
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v1

    .line 643
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    const/4 v2, 0x0

    iget-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v2, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 644
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->P:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 648
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 650
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->q(I)V

    .line 674
    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 675
    return-object v7

    .line 658
    :cond_0
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;->c(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->c()I

    move-result v4

    .line 661
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;->c(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->d()I

    move-result v5

    .line 662
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->b:Lui_Controller/CustomWidget/a;

    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->a()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    new-instance v6, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$3;

    invoke-direct {v6, p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$3;-><init>(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)V

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;IIIILui_Controller/CustomWidget/a$a;)V

    goto :goto_0

    .line 670
    :cond_1
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->r(I)V

    goto :goto_0
.end method

.method static synthetic l(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->C:I

    return v0
.end method

.method private l(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 680
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 684
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 686
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 688
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 690
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycle bitmap by DeleteView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 693
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 695
    :cond_0
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->b(Landroid/graphics/Bitmap;)V

    .line 697
    :cond_1
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 699
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->a(Landroid/graphics/Bitmap;)V

    .line 702
    :cond_2
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 704
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 705
    return-void
.end method

.method static synthetic m(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->z:F

    return v0
.end method

.method private m(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 742
    .line 743
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 744
    if-nez v0, :cond_0

    .line 746
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

    invoke-direct {p0, v1, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 748
    :cond_0
    return-object v0
.end method

.method static synthetic n(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->y:Landroid/graphics/PointF;

    return-object v0
.end method

.method private n(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;
    .locals 2

    .prologue
    .line 770
    .line 771
    const/4 v0, 0x0

    .line 772
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->m(I)Landroid/view/View;

    move-result-object v1

    .line 773
    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;

    .line 776
    :cond_0
    return-object v0
.end method

.method private o(I)V
    .locals 2

    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    .line 1002
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1003
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->b(Z)V

    .line 1004
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->N:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c;->b(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Landroid/view/View;)V

    .line 1006
    :cond_0
    return-void
.end method

.method static synthetic o(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->J:Z

    return v0
.end method

.method private p(I)V
    .locals 2

    .prologue
    .line 1010
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    .line 1011
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1012
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->b(Z)V

    .line 1013
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->N:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c;->b(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    invoke-virtual {p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Ljava/lang/Object;)Lcom/a/a/i;

    move-result-object v0

    .line 1014
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/i;->a(Landroid/widget/ImageView;)Lcom/a/a/h/a/h;

    .line 1016
    :cond_0
    return-void
.end method

.method private q(I)V
    .locals 2

    .prologue
    .line 1338
    .line 1339
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;

    move-result-object v0

    .line 1340
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1341
    return-void
.end method

.method private r(I)V
    .locals 3

    .prologue
    .line 1345
    .line 1346
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;

    move-result-object v0

    .line 1347
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1348
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1349
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1350
    return-void
.end method

.method private s(I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1456
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v1

    .line 1457
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;

    move-result-object v2

    .line 1460
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1462
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1463
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v0

    iget v5, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->b:F

    .line 1465
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1466
    if-nez v0, :cond_0

    .line 1467
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1469
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 1470
    mul-float v6, v5, v3

    mul-float/2addr v3, v5

    invoke-virtual {v4, v6, v3, v7, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1471
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1472
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v4

    iget-object v4, v4, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v4}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F

    move-result v0

    iput v0, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->c:F

    .line 1474
    invoke-virtual {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1475
    invoke-virtual {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v1

    iget-object v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1476
    return-void
.end method


# virtual methods
.method protected a(ZZLandroid/graphics/Bitmap;Landroid/graphics/Matrix;)F
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 1374
    if-nez p3, :cond_0

    .line 1422
    :goto_0
    return v0

    .line 1378
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1379
    invoke-virtual {v2, p4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1381
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v0, v0, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1383
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1384
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 1385
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 1391
    if-eqz p2, :cond_6

    .line 1395
    iget-object v5, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v5, v5, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->e:I

    .line 1397
    int-to-float v6, v5

    cmpg-float v6, v1, v6

    if-gez v6, :cond_2

    .line 1398
    int-to-float v5, v5

    sub-float v1, v5, v1

    div-float/2addr v1, v7

    iget v5, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v5

    .line 1406
    :goto_1
    if-eqz p1, :cond_1

    .line 1409
    iget-object v5, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v5, v5, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    .line 1411
    int-to-float v6, v5

    cmpg-float v6, v4, v6

    if-gez v6, :cond_4

    .line 1412
    int-to-float v0, v5

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    .line 1420
    :cond_1
    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1421
    invoke-virtual {p4, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1399
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 1400
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_1

    .line 1401
    :cond_3
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v5

    cmpg-float v1, v1, v6

    if-gez v1, :cond_6

    .line 1402
    int-to-float v1, v5

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v5

    goto :goto_1

    .line 1413
    :cond_4
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_5

    .line 1414
    iget v0, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_2

    .line 1415
    :cond_5
    iget v4, v3, Landroid/graphics/RectF;->right:F

    int-to-float v6, v5

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 1416
    int-to-float v0, v5

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 194
    iput-boolean v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j:Z

    .line 195
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->p:J

    .line 196
    iput v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->q:I

    .line 197
    iput v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->s:I

    .line 198
    iput-boolean v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->t:Z

    .line 199
    iput v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->C:I

    .line 200
    iput v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->E:I

    .line 202
    invoke-direct {p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->g()V

    .line 203
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchScrollTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 225
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    if-eq p1, v0, :cond_0

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(IZ)V

    .line 228
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->smoothScrollTo(II)V

    .line 231
    :cond_0
    return-void
.end method

.method public a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;

    .line 252
    return-void
.end method

.method public a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;

    .line 257
    return-void
.end method

.method public a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$d;

    .line 247
    return-void
.end method

.method public a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->f:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$e;

    .line 262
    return-void
.end method

.method public a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;I)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->m:I

    .line 184
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(I)I

    move-result v0

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n:I

    .line 185
    const v0, 0x7f0200aa

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->I:I

    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Z)V

    .line 188
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->setVisibility(I)V

    .line 189
    invoke-direct {p0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->g(I)V

    .line 190
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 207
    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->K:I

    .line 208
    iput-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->L:Z

    .line 209
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->p:J

    .line 236
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    if-eq p1, v0, :cond_0

    .line 238
    const-string v0, "Update 0"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 239
    invoke-direct {p0, p1, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(IZ)V

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(I)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->scrollTo(II)V

    .line 242
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->K:I

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->M:Z

    .line 215
    return-void
.end method

.method public c(I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 298
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;->a(I)V

    .line 300
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x106000d

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 306
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v3

    .line 312
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    .line 313
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 315
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 317
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v5, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 324
    :cond_1
    iput-object v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->G:Ljava/util/Map;

    .line 326
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    .line 327
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 328
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 330
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 332
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 336
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 339
    :cond_3
    iput-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->F:Ljava/util/Map;

    .line 341
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 343
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    .line 345
    :cond_4
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->H:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 347
    :cond_5
    return-void
.end method

.method public d(I)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->b()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 351
    .line 352
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    sub-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 354
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->m(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 358
    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k(I)Landroid/view/View;

    .line 352
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->s:I

    .line 365
    return-void
.end method

.method public e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;->b(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 827
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(IZ)V

    .line 830
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->smoothScrollTo(II)V

    .line 832
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 836
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(IZ)V

    .line 839
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->smoothScrollTo(II)V

    .line 841
    :cond_0
    return-void
.end method

.method public f(I)Z
    .locals 2

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->l()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 852
    const/4 v0, 0x1

    .line 854
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 980
    const-string v0, "onClick"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 981
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 808
    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 809
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->E:I

    if-nez v1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return v0

    .line 816
    :cond_1
    iget-boolean v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->J:Z

    if-eqz v1, :cond_0

    .line 818
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h:Landroid/widget/LinearLayout;

    .line 396
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 958
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 959
    iget-wide v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->p:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 961
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 962
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->p:J

    .line 963
    iput p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->q:I

    .line 965
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->p:J

    .line 966
    iput p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->q:I

    .line 967
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->r:I

    if-eq v0, v4, :cond_1

    .line 968
    iget v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->q:I

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->r:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scroll done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Ljava/lang/String;I)V

    .line 970
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Z)V

    .line 971
    iput v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->r:I

    .line 974
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 865
    invoke-direct {p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    :cond_0
    :goto_0
    return v0

    .line 869
    :cond_1
    invoke-direct {p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 873
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->E:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->E:I

    if-ne v1, v4, :cond_0

    .line 877
    :cond_2
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;

    iget v1, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    int-to-float v1, v1

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->u:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 879
    packed-switch v2, :pswitch_data_0

    .line 942
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 883
    :pswitch_1
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Landroid/view/MotionEvent;)V

    .line 884
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->B:Landroid/graphics/PointF;

    if-nez v0, :cond_3

    .line 886
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->B:Landroid/graphics/PointF;

    .line 887
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->A:Landroid/graphics/PointF;

    .line 888
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->A:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 890
    :cond_3
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->B:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    .line 898
    :pswitch_2
    iget v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->E:I

    if-eq v3, v4, :cond_0

    .line 902
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 904
    iput v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->E:I

    .line 907
    :cond_4
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->A:Landroid/graphics/PointF;

    if-nez v2, :cond_5

    .line 909
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->B:Landroid/graphics/PointF;

    .line 910
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->A:Landroid/graphics/PointF;

    .line 911
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->A:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 913
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->A:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 915
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 917
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    invoke-direct {p0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->s(I)V

    .line 918
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(IZ)V

    .line 919
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    invoke-direct {p0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(I)I

    move-result v1

    invoke-direct {p0, v1, v5}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(II)V

    .line 935
    :cond_6
    :goto_2
    iput-object v6, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->B:Landroid/graphics/PointF;

    .line 936
    iput-object v6, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->A:Landroid/graphics/PointF;

    .line 937
    invoke-direct {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Landroid/view/MotionEvent;)V

    .line 938
    iput v5, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->E:I

    goto/16 :goto_0

    .line 922
    :cond_7
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->A:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_8

    .line 924
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 926
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    invoke-direct {p0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->s(I)V

    .line 927
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(IZ)V

    .line 928
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    invoke-direct {p0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(I)I

    move-result v1

    invoke-direct {p0, v1, v5}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(II)V

    goto :goto_2

    .line 933
    :cond_8
    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k:I

    invoke-direct {p0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(I)I

    move-result v1

    invoke-direct {p0, v1, v5}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(II)V

    goto :goto_2

    .line 879
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onWindowFocusChanged(Z)V

    .line 401
    return-void
.end method

.method public setEnableScrolling(Z)V
    .locals 0

    .prologue
    .line 387
    iput-boolean p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->J:Z

    .line 388
    return-void
.end method

.method public setSingleHorizontalScrollViewCallback(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->N:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 220
    return-void
.end method
