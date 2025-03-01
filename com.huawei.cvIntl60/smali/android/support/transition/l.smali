.class public abstract Landroid/support/transition/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/l$b;,
        Landroid/support/transition/l$a;,
        Landroid/support/transition/l$c;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/l$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final h:[I

.field private static final i:Landroid/support/transition/g;


# instance fields
.field private B:Landroid/view/ViewGroup;

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/l$c;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/support/transition/l$b;

.field private I:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/support/transition/g;

.field a:J

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/transition/p;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/support/transition/o;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Landroid/animation/TimeInterpolator;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/support/transition/t;

.field private w:Landroid/support/transition/t;

.field private x:[I

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/s;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/transition/l;->h:[I

    .line 170
    new-instance v0, Landroid/support/transition/l$1;

    invoke-direct {v0}, Landroid/support/transition/l$1;-><init>()V

    sput-object v0, Landroid/support/transition/l;->i:Landroid/support/transition/g;

    .line 204
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/l;->A:Ljava/lang/ThreadLocal;

    return-void

    .line 163
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/l;->j:Ljava/lang/String;

    .line 182
    iput-wide v4, p0, Landroid/support/transition/l;->k:J

    .line 183
    iput-wide v4, p0, Landroid/support/transition/l;->a:J

    .line 184
    iput-object v1, p0, Landroid/support/transition/l;->l:Landroid/animation/TimeInterpolator;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    .line 187
    iput-object v1, p0, Landroid/support/transition/l;->m:Ljava/util/ArrayList;

    .line 188
    iput-object v1, p0, Landroid/support/transition/l;->n:Ljava/util/ArrayList;

    .line 189
    iput-object v1, p0, Landroid/support/transition/l;->o:Ljava/util/ArrayList;

    .line 190
    iput-object v1, p0, Landroid/support/transition/l;->p:Ljava/util/ArrayList;

    .line 191
    iput-object v1, p0, Landroid/support/transition/l;->q:Ljava/util/ArrayList;

    .line 192
    iput-object v1, p0, Landroid/support/transition/l;->r:Ljava/util/ArrayList;

    .line 193
    iput-object v1, p0, Landroid/support/transition/l;->s:Ljava/util/ArrayList;

    .line 194
    iput-object v1, p0, Landroid/support/transition/l;->t:Ljava/util/ArrayList;

    .line 195
    iput-object v1, p0, Landroid/support/transition/l;->u:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Landroid/support/transition/t;

    invoke-direct {v0}, Landroid/support/transition/t;-><init>()V

    iput-object v0, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    .line 197
    new-instance v0, Landroid/support/transition/t;

    invoke-direct {v0}, Landroid/support/transition/t;-><init>()V

    iput-object v0, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    .line 198
    iput-object v1, p0, Landroid/support/transition/l;->d:Landroid/support/transition/p;

    .line 199
    sget-object v0, Landroid/support/transition/l;->h:[I

    iput-object v0, p0, Landroid/support/transition/l;->x:[I

    .line 208
    iput-object v1, p0, Landroid/support/transition/l;->B:Landroid/view/ViewGroup;

    .line 216
    iput-boolean v2, p0, Landroid/support/transition/l;->e:Z

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/l;->f:Ljava/util/ArrayList;

    .line 225
    iput v2, p0, Landroid/support/transition/l;->C:I

    .line 228
    iput-boolean v2, p0, Landroid/support/transition/l;->D:Z

    .line 232
    iput-boolean v2, p0, Landroid/support/transition/l;->E:Z

    .line 235
    iput-object v1, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/l;->G:Ljava/util/ArrayList;

    .line 254
    sget-object v0, Landroid/support/transition/l;->i:Landroid/support/transition/g;

    iput-object v0, p0, Landroid/support/transition/l;->J:Landroid/support/transition/g;

    .line 263
    return-void
.end method

.method private a(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/l$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 894
    if-eqz p1, :cond_0

    .line 896
    new-instance v0, Landroid/support/transition/l$2;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/l$2;-><init>(Landroid/support/transition/l;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 908
    invoke-virtual {p0, p1}, Landroid/support/transition/l;->a(Landroid/animation/Animator;)V

    .line 910
    :cond_0
    return-void
.end method

.method private a(Landroid/support/transition/t;Landroid/support/transition/t;)V
    .locals 5

    .prologue
    .line 664
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v0, p1, Landroid/support/transition/t;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 665
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    iget-object v0, p2, Landroid/support/transition/t;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 667
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/transition/l;->x:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 668
    iget-object v3, p0, Landroid/support/transition/l;->x:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 667
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :pswitch_0
    invoke-direct {p0, v1, v2}, Landroid/support/transition/l;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_1

    .line 673
    :pswitch_1
    iget-object v3, p1, Landroid/support/transition/t;->d:Landroid/support/v4/util/ArrayMap;

    iget-object v4, p2, Landroid/support/transition/t;->d:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/transition/l;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_1

    .line 677
    :pswitch_2
    iget-object v3, p1, Landroid/support/transition/t;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/support/transition/t;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/transition/l;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 681
    :pswitch_3
    iget-object v3, p1, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    iget-object v4, p2, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/transition/l;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V

    goto :goto_1

    .line 686
    :cond_0
    invoke-direct {p0, v1, v2}, Landroid/support/transition/l;->b(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 687
    return-void

    .line 668
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/support/transition/t;Landroid/view/View;Landroid/support/transition/s;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1531
    iget-object v0, p0, Landroid/support/transition/t;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1533
    if-ltz v0, :cond_0

    .line 1534
    iget-object v1, p0, Landroid/support/transition/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 1536
    iget-object v1, p0, Landroid/support/transition/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1541
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 1542
    if-eqz v0, :cond_1

    .line 1543
    iget-object v1, p0, Landroid/support/transition/t;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1545
    iget-object v1, p0, Landroid/support/transition/t;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 1551
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1552
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1553
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1554
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 1555
    iget-object v0, p0, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_5

    .line 1557
    iget-object v0, p0, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1558
    if-eqz v0, :cond_2

    .line 1559
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1560
    iget-object v0, p0, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1568
    :cond_2
    :goto_2
    return-void

    .line 1538
    :cond_3
    iget-object v1, p0, Landroid/support/transition/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1547
    :cond_4
    iget-object v1, p0, Landroid/support/transition/t;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1563
    :cond_5
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1564
    iget-object v0, p0, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2, v3, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method private a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/s;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 544
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 545
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/s;

    .line 547
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/transition/s;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/s;

    .line 549
    iget-object v3, p0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v1, p0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 554
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/s;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/s;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v5

    .line 619
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 620
    invoke-virtual {p3, v4}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 621
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {p3, v4}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 623
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/s;

    .line 625
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/s;

    .line 626
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 627
    iget-object v6, p0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v2, p0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 635
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/s;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/s;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 564
    invoke-virtual {p3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    .line 565
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 566
    invoke-virtual {p3, v4}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 567
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {p3, v4}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 569
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/s;

    .line 571
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/s;

    .line 572
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 573
    iget-object v6, p0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v2, p0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 581
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/s;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/s;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 592
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 593
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 594
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 596
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/s;

    .line 598
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/s;

    .line 599
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 600
    iget-object v6, p0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v2, p0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 608
    :cond_1
    return-void
.end method

.method private static a(Landroid/support/transition/s;Landroid/support/transition/s;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1862
    iget-object v2, p0, Landroid/support/transition/s;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1863
    iget-object v3, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1865
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    move v0, v1

    .line 1880
    :cond_0
    :goto_0
    return v0

    .line 1868
    :cond_1
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1873
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/s;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 644
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 645
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/s;

    .line 646
    iget-object v3, v0, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    iget-object v3, p0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v0, p0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 653
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 654
    invoke-virtual {p2, v2}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/s;

    .line 655
    iget-object v1, v0, Landroid/support/transition/s;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/transition/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 656
    iget-object v1, p0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v0, p0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 660
    :cond_3
    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1598
    if-nez p1, :cond_1

    .line 1653
    :cond_0
    return-void

    .line 1601
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1602
    iget-object v0, p0, Landroid/support/transition/l;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/l;->o:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1605
    :cond_2
    iget-object v0, p0, Landroid/support/transition/l;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/l;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1608
    :cond_3
    iget-object v0, p0, Landroid/support/transition/l;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1609
    iget-object v0, p0, Landroid/support/transition/l;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1610
    :goto_0
    if-ge v2, v4, :cond_4

    .line 1611
    iget-object v0, p0, Landroid/support/transition/l;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1616
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1617
    new-instance v0, Landroid/support/transition/s;

    invoke-direct {v0}, Landroid/support/transition/s;-><init>()V

    .line 1618
    iput-object p1, v0, Landroid/support/transition/s;->b:Landroid/view/View;

    .line 1619
    if-eqz p2, :cond_8

    .line 1620
    invoke-virtual {p0, v0}, Landroid/support/transition/l;->a(Landroid/support/transition/s;)V

    .line 1624
    :goto_1
    iget-object v2, v0, Landroid/support/transition/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    invoke-virtual {p0, v0}, Landroid/support/transition/l;->c(Landroid/support/transition/s;)V

    .line 1626
    if-eqz p2, :cond_9

    .line 1627
    iget-object v2, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    invoke-static {v2, p1, v0}, Landroid/support/transition/l;->a(Landroid/support/transition/t;Landroid/view/View;Landroid/support/transition/s;)V

    .line 1632
    :cond_5
    :goto_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Landroid/support/transition/l;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/l;->s:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1637
    :cond_6
    iget-object v0, p0, Landroid/support/transition/l;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/l;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1640
    :cond_7
    iget-object v0, p0, Landroid/support/transition/l;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 1641
    iget-object v0, p0, Landroid/support/transition/l;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 1642
    :goto_3
    if-ge v2, v3, :cond_a

    .line 1643
    iget-object v0, p0, Landroid/support/transition/l;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1642
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 1622
    :cond_8
    invoke-virtual {p0, v0}, Landroid/support/transition/l;->b(Landroid/support/transition/s;)V

    goto :goto_1

    .line 1629
    :cond_9
    iget-object v2, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    invoke-static {v2, p1, v0}, Landroid/support/transition/l;->a(Landroid/support/transition/t;Landroid/view/View;Landroid/support/transition/s;)V

    goto :goto_2

    .line 1648
    :cond_a
    check-cast p1, Landroid/view/ViewGroup;

    move v0, v1

    .line 1649
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1650
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/transition/l;->c(Landroid/view/View;Z)V

    .line 1649
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static q()Landroid/support/v4/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/l$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    sget-object v0, Landroid/support/transition/l;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 858
    if-nez v0, :cond_0

    .line 859
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 860
    sget-object v1, Landroid/support/transition/l;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 862
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)Landroid/support/transition/l;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 341
    iput-wide p1, p0, Landroid/support/transition/l;->a:J

    .line 342
    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/l;
    .locals 0
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 395
    iput-object p1, p0, Landroid/support/transition/l;->l:Landroid/animation/TimeInterpolator;

    .line 396
    return-object p0
.end method

.method public a(Landroid/support/transition/l$c;)Landroid/support/transition/l;
    .locals 1
    .param p1    # Landroid/support/transition/l$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 2033
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    .line 2036
    :cond_0
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    return-object p0
.end method

.method public a(Landroid/view/View;Z)Landroid/support/transition/s;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1663
    iget-object v0, p0, Landroid/support/transition/l;->d:Landroid/support/transition/p;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Landroid/support/transition/l;->d:Landroid/support/transition/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/p;->a(Landroid/view/View;Z)Landroid/support/transition/s;

    move-result-object v0

    .line 1667
    :goto_0
    return-object v0

    .line 1666
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    .line 1667
    :goto_1
    iget-object v0, v0, Landroid/support/transition/t;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/s;

    goto :goto_0

    .line 1666
    :cond_1
    iget-object v0, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    goto :goto_1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2246
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    iget-wide v2, p0, Landroid/support/transition/l;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dur("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/l;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2250
    :cond_0
    iget-wide v2, p0, Landroid/support/transition/l;->k:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 2251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dly("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/l;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2253
    :cond_1
    iget-object v2, p0, Landroid/support/transition/l;->l:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    .line 2254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "interp("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/l;->l:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    :cond_2
    iget-object v2, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2257
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tgts("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2258
    iget-object v0, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    .line 2259
    :goto_0
    iget-object v3, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2260
    if-lez v0, :cond_4

    .line 2261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2263
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2266
    :cond_5
    iget-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2267
    :goto_1
    iget-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 2268
    if-lez v1, :cond_6

    .line 2269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2271
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2274
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2276
    :cond_8
    return-object v0
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 1895
    if-nez p1, :cond_0

    .line 1896
    invoke-virtual {p0}, Landroid/support/transition/l;->k()V

    .line 1916
    :goto_0
    return-void

    .line 1898
    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/l;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1899
    invoke-virtual {p0}, Landroid/support/transition/l;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1901
    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/l;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1902
    invoke-virtual {p0}, Landroid/support/transition/l;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1904
    :cond_2
    invoke-virtual {p0}, Landroid/support/transition/l;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1905
    invoke-virtual {p0}, Landroid/support/transition/l;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1907
    :cond_3
    new-instance v0, Landroid/support/transition/l$3;

    invoke-direct {v0, p0}, Landroid/support/transition/l$3;-><init>(Landroid/support/transition/l;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1914
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public a(Landroid/support/transition/g;)V
    .locals 1
    .param p1    # Landroid/support/transition/g;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2076
    if-nez p1, :cond_0

    .line 2077
    sget-object v0, Landroid/support/transition/l;->i:Landroid/support/transition/g;

    iput-object v0, p0, Landroid/support/transition/l;->J:Landroid/support/transition/g;

    .line 2081
    :goto_0
    return-void

    .line 2079
    :cond_0
    iput-object p1, p0, Landroid/support/transition/l;->J:Landroid/support/transition/g;

    goto :goto_0
.end method

.method public a(Landroid/support/transition/l$b;)V
    .locals 0
    .param p1    # Landroid/support/transition/l$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2109
    iput-object p1, p0, Landroid/support/transition/l;->H:Landroid/support/transition/l$b;

    .line 2110
    return-void
.end method

.method public a(Landroid/support/transition/o;)V
    .locals 0
    .param p1    # Landroid/support/transition/o;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2155
    iput-object p1, p0, Landroid/support/transition/l;->g:Landroid/support/transition/o;

    .line 2156
    return-void
.end method

.method public abstract a(Landroid/support/transition/s;)V
    .param p1    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 1781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    .line 1782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;

    .line 1783
    iget-object v0, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    iget-object v1, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    invoke-direct {p0, v0, v1}, Landroid/support/transition/l;->a(Landroid/support/transition/t;Landroid/support/transition/t;)V

    .line 1785
    invoke-static {}, Landroid/support/transition/l;->q()Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    .line 1786
    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 1787
    invoke-static {p1}, Landroid/support/transition/ad;->b(Landroid/view/View;)Landroid/support/transition/al;

    move-result-object v5

    .line 1788
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_5

    .line 1789
    invoke-virtual {v4, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1790
    if-eqz v0, :cond_2

    .line 1791
    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/l$a;

    .line 1792
    if-eqz v1, :cond_2

    iget-object v6, v1, Landroid/support/transition/l$a;->a:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, v1, Landroid/support/transition/l$a;->d:Landroid/support/transition/al;

    .line 1793
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1794
    iget-object v6, v1, Landroid/support/transition/l$a;->c:Landroid/support/transition/s;

    .line 1795
    iget-object v7, v1, Landroid/support/transition/l$a;->a:Landroid/view/View;

    .line 1796
    invoke-virtual {p0, v7, v2}, Landroid/support/transition/l;->a(Landroid/view/View;Z)Landroid/support/transition/s;

    move-result-object v8

    .line 1797
    invoke-virtual {p0, v7, v2}, Landroid/support/transition/l;->b(Landroid/view/View;Z)Landroid/support/transition/s;

    move-result-object v7

    .line 1798
    if-nez v8, :cond_0

    if-eqz v7, :cond_3

    :cond_0
    iget-object v1, v1, Landroid/support/transition/l$a;->e:Landroid/support/transition/l;

    .line 1799
    invoke-virtual {v1, v6, v7}, Landroid/support/transition/l;->a(Landroid/support/transition/s;Landroid/support/transition/s;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 1800
    :goto_1
    if-eqz v1, :cond_2

    .line 1801
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1805
    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1788
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 1799
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1810
    :cond_4
    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1817
    :cond_5
    iget-object v2, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    iget-object v3, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    iget-object v4, p0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/l;->a(Landroid/view/ViewGroup;Landroid/support/transition/t;Landroid/support/transition/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1818
    invoke-virtual {p0}, Landroid/support/transition/l;->e()V

    .line 1819
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/transition/t;Landroid/support/transition/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/t;",
            "Landroid/support/transition/t;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/s;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 707
    invoke-static {}, Landroid/support/transition/l;->q()Landroid/support/v4/util/ArrayMap;

    move-result-object v14

    .line 708
    const-wide v8, 0x7fffffffffffffffL

    .line 709
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    .line 710
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 711
    const/4 v2, 0x0

    move v13, v2

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_9

    .line 712
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/s;

    .line 713
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/s;

    .line 714
    if-eqz v2, :cond_d

    iget-object v4, v2, Landroid/support/transition/s;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 715
    const/4 v2, 0x0

    move-object v12, v2

    .line 717
    :goto_1
    if-eqz v3, :cond_c

    iget-object v2, v3, Landroid/support/transition/s;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 718
    const/4 v3, 0x0

    move-object v11, v3

    .line 720
    :goto_2
    if-nez v12, :cond_1

    if-nez v11, :cond_1

    .line 711
    :cond_0
    :goto_3
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_0

    .line 724
    :cond_1
    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroid/support/transition/l;->a(Landroid/support/transition/s;Landroid/support/transition/s;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 725
    :goto_4
    if-eqz v2, :cond_0

    .line 744
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v11}, Landroid/support/transition/l;->a(Landroid/view/ViewGroup;Landroid/support/transition/s;Landroid/support/transition/s;)Landroid/animation/Animator;

    move-result-object v5

    .line 745
    if-eqz v5, :cond_0

    .line 748
    const/4 v2, 0x0

    .line 749
    if-eqz v11, :cond_8

    .line 750
    iget-object v6, v11, Landroid/support/transition/s;->b:Landroid/view/View;

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/l;->a()[Ljava/lang/String;

    move-result-object v7

    .line 752
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    array-length v3, v7

    if-lez v3, :cond_5

    .line 753
    new-instance v4, Landroid/support/transition/s;

    invoke-direct {v4}, Landroid/support/transition/s;-><init>()V

    .line 754
    iput-object v6, v4, Landroid/support/transition/s;->b:Landroid/view/View;

    .line 755
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/t;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/s;

    .line 756
    if-eqz v2, :cond_4

    .line 757
    const/4 v3, 0x0

    :goto_5
    array-length v10, v7

    if-ge v3, v10, :cond_4

    .line 758
    iget-object v10, v4, Landroid/support/transition/s;->a:Ljava/util/Map;

    aget-object v17, v7, v3

    iget-object v0, v2, Landroid/support/transition/s;->a:Ljava/util/Map;

    move-object/from16 v18, v0

    aget-object v19, v7, v3

    .line 759
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 758
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 724
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 762
    :cond_4
    invoke-virtual {v14}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v7

    .line 763
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v7, :cond_b

    .line 764
    invoke-virtual {v14, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 765
    invoke-virtual {v14, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/l$a;

    .line 766
    iget-object v10, v2, Landroid/support/transition/l$a;->c:Landroid/support/transition/s;

    if-eqz v10, :cond_7

    iget-object v10, v2, Landroid/support/transition/l$a;->a:Landroid/view/View;

    if-ne v10, v6, :cond_7

    iget-object v10, v2, Landroid/support/transition/l$a;->b:Ljava/lang/String;

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/l;->p()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 768
    iget-object v2, v2, Landroid/support/transition/l$a;->c:Landroid/support/transition/s;

    invoke-virtual {v2, v4}, Landroid/support/transition/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 770
    const/4 v3, 0x0

    move-object v2, v4

    move-object v5, v3

    :cond_5
    :goto_7
    move-object v7, v2

    move-object v3, v6

    move-object v10, v5

    .line 779
    :goto_8
    if-eqz v10, :cond_0

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/l;->g:Landroid/support/transition/o;

    if-eqz v2, :cond_6

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/l;->g:Landroid/support/transition/o;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1, v12, v11}, Landroid/support/transition/o;->a(Landroid/view/ViewGroup;Landroid/support/transition/l;Landroid/support/transition/s;Landroid/support/transition/s;)J

    move-result-wide v4

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/l;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    long-to-int v6, v4

    invoke-virtual {v15, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 783
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v8, v4

    .line 785
    :cond_6
    new-instance v2, Landroid/support/transition/l$a;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/l;->p()Ljava/lang/String;

    move-result-object v4

    .line 786
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ad;->b(Landroid/view/View;)Landroid/support/transition/al;

    move-result-object v6

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/transition/l$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/l;Landroid/support/transition/al;Landroid/support/transition/s;)V

    .line 787
    invoke-virtual {v14, v10, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/l;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 763
    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 777
    :cond_8
    iget-object v3, v12, Landroid/support/transition/s;->b:Landroid/view/View;

    move-object v7, v2

    move-object v10, v5

    goto :goto_8

    .line 793
    :cond_9
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_a

    .line 794
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_a

    .line 795
    invoke-virtual {v15, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/transition/l;->G:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 797
    invoke-virtual {v15, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v8

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 798
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 794
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    .line 801
    :cond_a
    return-void

    :cond_b
    move-object v2, v4

    goto :goto_7

    :cond_c
    move-object v11, v3

    goto/16 :goto_2

    :cond_d
    move-object v12, v2

    goto/16 :goto_1
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1468
    invoke-virtual {p0, p2}, Landroid/support/transition/l;->a(Z)V

    .line 1469
    iget-object v0, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_0
    iget-object v0, p0, Landroid/support/transition/l;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/l;->m:Ljava/util/ArrayList;

    .line 1470
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Landroid/support/transition/l;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/l;->n:Ljava/util/ArrayList;

    .line 1471
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v1, v2

    .line 1472
    :goto_0
    iget-object v0, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1473
    iget-object v0, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1474
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1475
    if-eqz v0, :cond_3

    .line 1476
    new-instance v3, Landroid/support/transition/s;

    invoke-direct {v3}, Landroid/support/transition/s;-><init>()V

    .line 1477
    iput-object v0, v3, Landroid/support/transition/s;->b:Landroid/view/View;

    .line 1478
    if-eqz p2, :cond_4

    .line 1479
    invoke-virtual {p0, v3}, Landroid/support/transition/l;->a(Landroid/support/transition/s;)V

    .line 1483
    :goto_1
    iget-object v4, v3, Landroid/support/transition/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    invoke-virtual {p0, v3}, Landroid/support/transition/l;->c(Landroid/support/transition/s;)V

    .line 1485
    if-eqz p2, :cond_5

    .line 1486
    iget-object v4, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    invoke-static {v4, v0, v3}, Landroid/support/transition/l;->a(Landroid/support/transition/t;Landroid/view/View;Landroid/support/transition/s;)V

    .line 1472
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1481
    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/transition/l;->b(Landroid/support/transition/s;)V

    goto :goto_1

    .line 1488
    :cond_5
    iget-object v4, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    invoke-static {v4, v0, v3}, Landroid/support/transition/l;->a(Landroid/support/transition/t;Landroid/view/View;Landroid/support/transition/s;)V

    goto :goto_2

    :cond_6
    move v1, v2

    .line 1492
    :goto_3
    iget-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1493
    iget-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1494
    new-instance v3, Landroid/support/transition/s;

    invoke-direct {v3}, Landroid/support/transition/s;-><init>()V

    .line 1495
    iput-object v0, v3, Landroid/support/transition/s;->b:Landroid/view/View;

    .line 1496
    if-eqz p2, :cond_7

    .line 1497
    invoke-virtual {p0, v3}, Landroid/support/transition/l;->a(Landroid/support/transition/s;)V

    .line 1501
    :goto_4
    iget-object v4, v3, Landroid/support/transition/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    invoke-virtual {p0, v3}, Landroid/support/transition/l;->c(Landroid/support/transition/s;)V

    .line 1503
    if-eqz p2, :cond_8

    .line 1504
    iget-object v4, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    invoke-static {v4, v0, v3}, Landroid/support/transition/l;->a(Landroid/support/transition/t;Landroid/view/View;Landroid/support/transition/s;)V

    .line 1492
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1499
    :cond_7
    invoke-virtual {p0, v3}, Landroid/support/transition/l;->b(Landroid/support/transition/s;)V

    goto :goto_4

    .line 1506
    :cond_8
    iget-object v4, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    invoke-static {v4, v0, v3}, Landroid/support/transition/l;->a(Landroid/support/transition/t;Landroid/view/View;Landroid/support/transition/s;)V

    goto :goto_5

    .line 1510
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/support/transition/l;->c(Landroid/view/View;Z)V

    .line 1512
    :cond_a
    if-nez p2, :cond_d

    iget-object v0, p0, Landroid/support/transition/l;->I:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_d

    .line 1513
    iget-object v0, p0, Landroid/support/transition/l;->I:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    .line 1514
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 1515
    :goto_6
    if-ge v1, v3, :cond_b

    .line 1516
    iget-object v0, p0, Landroid/support/transition/l;->I:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1517
    iget-object v5, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    iget-object v5, v5, Landroid/support/transition/t;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1519
    :cond_b
    :goto_7
    if-ge v2, v3, :cond_d

    .line 1520
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1521
    if-eqz v0, :cond_c

    .line 1522
    iget-object v1, p0, Landroid/support/transition/l;->I:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1523
    iget-object v5, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    iget-object v5, v5, Landroid/support/transition/t;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1527
    :cond_d
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 1576
    if-eqz p1, :cond_0

    .line 1577
    iget-object v0, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    iget-object v0, v0, Landroid/support/transition/t;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1578
    iget-object v0, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    iget-object v0, v0, Landroid/support/transition/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1579
    iget-object v0, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    iget-object v0, v0, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 1585
    :goto_0
    return-void

    .line 1581
    :cond_0
    iget-object v0, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    iget-object v0, v0, Landroid/support/transition/t;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1582
    iget-object v0, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    iget-object v0, v0, Landroid/support/transition/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1583
    iget-object v0, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    iget-object v0, v0, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    goto :goto_0
.end method

.method public a(Landroid/support/transition/s;Landroid/support/transition/s;)Z
    .locals 6
    .param p1    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1836
    .line 1839
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1840
    invoke-virtual {p0}, Landroid/support/transition/l;->a()[Ljava/lang/String;

    move-result-object v3

    .line 1841
    if-eqz v3, :cond_2

    .line 1842
    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 1843
    invoke-static {p1, p2, v5}, Landroid/support/transition/l;->a(Landroid/support/transition/s;Landroid/support/transition/s;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    .line 1857
    :cond_0
    :goto_2
    return v2

    .line 1842
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1849
    :cond_2
    iget-object v0, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1850
    invoke-static {p1, p2, v0}, Landroid/support/transition/l;->a(Landroid/support/transition/s;Landroid/support/transition/s;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    .line 1852
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method a(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 814
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 815
    iget-object v0, p0, Landroid/support/transition/l;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/l;->o:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    :cond_0
    :goto_0
    return v2

    .line 818
    :cond_1
    iget-object v0, p0, Landroid/support/transition/l;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/l;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    :cond_2
    iget-object v0, p0, Landroid/support/transition/l;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 822
    iget-object v0, p0, Landroid/support/transition/l;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 823
    :goto_1
    if-ge v1, v5, :cond_3

    .line 824
    iget-object v0, p0, Landroid/support/transition/l;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 825
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 830
    :cond_3
    iget-object v0, p0, Landroid/support/transition/l;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 831
    iget-object v0, p0, Landroid/support/transition/l;->r:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    :cond_4
    iget-object v0, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/l;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/transition/l;->n:Ljava/util/ArrayList;

    .line 836
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Landroid/support/transition/l;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/l;->m:Ljava/util/ArrayList;

    .line 837
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v2, v3

    .line 838
    goto :goto_0

    .line 840
    :cond_7
    iget-object v0, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v2, v3

    .line 841
    goto/16 :goto_0

    .line 843
    :cond_9
    iget-object v0, p0, Landroid/support/transition/l;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/transition/l;->m:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v3

    .line 844
    goto/16 :goto_0

    .line 846
    :cond_a
    iget-object v0, p0, Landroid/support/transition/l;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 847
    :goto_2
    iget-object v0, p0, Landroid/support/transition/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 848
    iget-object v0, p0, Landroid/support/transition/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v3

    .line 849
    goto/16 :goto_0

    .line 847
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public a()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Landroid/support/transition/l;->a:J

    return-wide v0
.end method

.method public b(J)Landroid/support/transition/l;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 368
    iput-wide p1, p0, Landroid/support/transition/l;->k:J

    .line 369
    return-object p0
.end method

.method public b(Landroid/support/transition/l$c;)Landroid/support/transition/l;
    .locals 1
    .param p1    # Landroid/support/transition/l$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 2049
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2056
    :cond_0
    :goto_0
    return-object p0

    .line 2052
    :cond_1
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2053
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2054
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Landroid/support/transition/l;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 998
    iget-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    return-object p0
.end method

.method b(Landroid/view/View;Z)Landroid/support/transition/s;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1682
    iget-object v0, p0, Landroid/support/transition/l;->d:Landroid/support/transition/p;

    if-eqz v0, :cond_1

    .line 1683
    iget-object v0, p0, Landroid/support/transition/l;->d:Landroid/support/transition/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/p;->b(Landroid/view/View;Z)Landroid/support/transition/s;

    move-result-object v1

    .line 1706
    :cond_0
    :goto_0
    return-object v1

    .line 1685
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    move-object v4, v0

    .line 1686
    :goto_1
    if-eqz v4, :cond_0

    .line 1689
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1690
    const/4 v3, -0x1

    .line 1691
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_6

    .line 1692
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/s;

    .line 1693
    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, v0, Landroid/support/transition/s;->b:Landroid/view/View;

    if-ne v0, p1, :cond_3

    .line 1702
    :goto_3
    if-ltz v2, :cond_5

    .line 1703
    if-eqz p2, :cond_4

    iget-object v0, p0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;

    .line 1704
    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/s;

    :goto_5
    move-object v1, v0

    .line 1706
    goto :goto_0

    .line 1685
    :cond_2
    iget-object v0, p0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_1

    .line 1691
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1703
    :cond_4
    iget-object v0, p0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_5

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method public abstract b(Landroid/support/transition/s;)V
    .param p1    # Landroid/support/transition/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public c()J
    .locals 2

    .prologue
    .line 381
    iget-wide v0, p0, Landroid/support/transition/l;->k:J

    return-wide v0
.end method

.method public c(Landroid/view/View;)Landroid/support/transition/l;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1097
    return-object p0
.end method

.method c(Landroid/support/transition/s;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2180
    iget-object v0, p0, Landroid/support/transition/l;->g:Landroid/support/transition/o;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2181
    iget-object v0, p0, Landroid/support/transition/l;->g:Landroid/support/transition/o;

    invoke-virtual {v0}, Landroid/support/transition/o;->a()[Ljava/lang/String;

    move-result-object v3

    .line 2182
    if-nez v3, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 2185
    :cond_1
    const/4 v2, 0x1

    move v0, v1

    .line 2186
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 2187
    iget-object v4, p1, Landroid/support/transition/s;->a:Ljava/util/Map;

    aget-object v5, v3, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2192
    :goto_2
    if-nez v1, :cond_0

    .line 2193
    iget-object v0, p0, Landroid/support/transition/l;->g:Landroid/support/transition/o;

    invoke-virtual {v0, p1}, Landroid/support/transition/o;->a(Landroid/support/transition/s;)V

    goto :goto_0

    .line 2186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/support/transition/l;->o()Landroid/support/transition/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/transition/l;->l:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1718
    iget-boolean v0, p0, Landroid/support/transition/l;->E:Z

    if-nez v0, :cond_3

    .line 1719
    invoke-static {}, Landroid/support/transition/l;->q()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    .line 1720
    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 1721
    invoke-static {p1}, Landroid/support/transition/ad;->b(Landroid/view/View;)Landroid/support/transition/al;

    move-result-object v3

    .line 1722
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1723
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l$a;

    .line 1724
    iget-object v4, v0, Landroid/support/transition/l$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/transition/l$a;->d:Landroid/support/transition/al;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1725
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1726
    invoke-static {v0}, Landroid/support/transition/a;->a(Landroid/animation/Animator;)V

    .line 1722
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1729
    :cond_1
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1730
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    .line 1731
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1732
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1733
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1734
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/l$c;

    invoke-interface {v1, p0}, Landroid/support/transition/l$c;->b(Landroid/support/transition/l;)V

    .line 1733
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1737
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/l;->D:Z

    .line 1739
    :cond_3
    return-void
.end method

.method protected e()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/support/transition/l;->j()V

    .line 877
    invoke-static {}, Landroid/support/transition/l;->q()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    .line 879
    iget-object v0, p0, Landroid/support/transition/l;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 883
    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 884
    invoke-virtual {p0}, Landroid/support/transition/l;->j()V

    .line 885
    invoke-direct {p0, v0, v1}, Landroid/support/transition/l;->a(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, p0, Landroid/support/transition/l;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 889
    invoke-virtual {p0}, Landroid/support/transition/l;->k()V

    .line 890
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1750
    iget-boolean v0, p0, Landroid/support/transition/l;->D:Z

    if-eqz v0, :cond_3

    .line 1751
    iget-boolean v0, p0, Landroid/support/transition/l;->E:Z

    if-nez v0, :cond_2

    .line 1752
    invoke-static {}, Landroid/support/transition/l;->q()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    .line 1753
    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 1754
    invoke-static {p1}, Landroid/support/transition/ad;->b(Landroid/view/View;)Landroid/support/transition/al;

    move-result-object v4

    .line 1755
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1756
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l$a;

    .line 1757
    iget-object v5, v0, Landroid/support/transition/l$a;->a:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/support/transition/l$a;->d:Landroid/support/transition/al;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1759
    invoke-static {v0}, Landroid/support/transition/a;->b(Landroid/animation/Animator;)V

    .line 1755
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1762
    :cond_1
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1763
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    .line 1764
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1765
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1766
    :goto_1
    if-ge v2, v4, :cond_2

    .line 1767
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/l$c;

    invoke-interface {v1, p0}, Landroid/support/transition/l$c;->c(Landroid/support/transition/l;)V

    .line 1766
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1771
    :cond_2
    iput-boolean v3, p0, Landroid/support/transition/l;->D:Z

    .line 1773
    :cond_3
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/support/transition/l;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1426
    iget-object v0, p0, Landroid/support/transition/l;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1441
    iget-object v0, p0, Landroid/support/transition/l;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1456
    iget-object v0, p0, Landroid/support/transition/l;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected j()V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1927
    iget v0, p0, Landroid/support/transition/l;->C:I

    if-nez v0, :cond_1

    .line 1928
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1929
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    .line 1930
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1931
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1932
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1933
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/l$c;

    invoke-interface {v1, p0}, Landroid/support/transition/l$c;->d(Landroid/support/transition/l;)V

    .line 1932
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1936
    :cond_0
    iput-boolean v3, p0, Landroid/support/transition/l;->E:Z

    .line 1938
    :cond_1
    iget v0, p0, Landroid/support/transition/l;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/l;->C:I

    .line 1939
    return-void
.end method

.method protected k()V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1954
    iget v0, p0, Landroid/support/transition/l;->C:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/transition/l;->C:I

    .line 1955
    iget v0, p0, Landroid/support/transition/l;->C:I

    if-nez v0, :cond_5

    .line 1956
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1957
    iget-object v0, p0, Landroid/support/transition/l;->F:Ljava/util/ArrayList;

    .line 1958
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1959
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 1960
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1961
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/l$c;

    invoke-interface {v1, p0}, Landroid/support/transition/l$c;->a(Landroid/support/transition/l;)V

    .line 1960
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1964
    :goto_1
    iget-object v0, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    iget-object v0, v0, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1965
    iget-object v0, p0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    iget-object v0, v0, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1966
    if-eqz v0, :cond_1

    .line 1967
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1964
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1970
    :goto_2
    iget-object v0, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    iget-object v0, v0, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1971
    iget-object v0, p0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    iget-object v0, v0, Landroid/support/transition/t;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1972
    if-eqz v0, :cond_3

    .line 1973
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1970
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1976
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/l;->E:Z

    .line 1978
    :cond_5
    return-void
.end method

.method public l()Landroid/support/transition/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 2094
    iget-object v0, p0, Landroid/support/transition/l;->J:Landroid/support/transition/g;

    return-object v0
.end method

.method public m()Landroid/support/transition/l$b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2124
    iget-object v0, p0, Landroid/support/transition/l;->H:Landroid/support/transition/l$b;

    return-object v0
.end method

.method public n()Landroid/support/transition/o;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2172
    iget-object v0, p0, Landroid/support/transition/l;->g:Landroid/support/transition/o;

    return-object v0
.end method

.method public o()Landroid/support/transition/l;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2215
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    .line 2216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/transition/l;->G:Ljava/util/ArrayList;

    .line 2217
    new-instance v2, Landroid/support/transition/t;

    invoke-direct {v2}, Landroid/support/transition/t;-><init>()V

    iput-object v2, v0, Landroid/support/transition/l;->v:Landroid/support/transition/t;

    .line 2218
    new-instance v2, Landroid/support/transition/t;

    invoke-direct {v2}, Landroid/support/transition/t;-><init>()V

    iput-object v2, v0, Landroid/support/transition/l;->w:Landroid/support/transition/t;

    .line 2219
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/transition/l;->y:Ljava/util/ArrayList;

    .line 2220
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/transition/l;->z:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    :goto_0
    return-object v0

    .line 2222
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 2223
    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 2241
    iget-object v0, p0, Landroid/support/transition/l;->j:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2209
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
