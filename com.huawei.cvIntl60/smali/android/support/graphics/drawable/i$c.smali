.class Landroid/support/graphics/drawable/i$c;
.super Landroid/support/graphics/drawable/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/graphics/drawable/i$d;",
            ">;"
        }
    .end annotation
.end field

.field c:F

.field final d:Landroid/graphics/Matrix;

.field e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1491
    invoke-direct {p0, v3}, Landroid/support/graphics/drawable/i$d;-><init>(Landroid/support/graphics/drawable/i$1;)V

    .line 1430
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i$c;->a:Landroid/graphics/Matrix;

    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    .line 1436
    iput v1, p0, Landroid/support/graphics/drawable/i$c;->c:F

    .line 1437
    iput v1, p0, Landroid/support/graphics/drawable/i$c;->f:F

    .line 1438
    iput v1, p0, Landroid/support/graphics/drawable/i$c;->g:F

    .line 1439
    iput v2, p0, Landroid/support/graphics/drawable/i$c;->h:F

    .line 1440
    iput v2, p0, Landroid/support/graphics/drawable/i$c;->i:F

    .line 1441
    iput v1, p0, Landroid/support/graphics/drawable/i$c;->j:F

    .line 1442
    iput v1, p0, Landroid/support/graphics/drawable/i$c;->k:F

    .line 1446
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i$c;->d:Landroid/graphics/Matrix;

    .line 1449
    iput-object v3, p0, Landroid/support/graphics/drawable/i$c;->m:Ljava/lang/String;

    .line 1492
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/i$c;Landroid/support/v4/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/graphics/drawable/i$c;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1451
    invoke-direct {p0, v3}, Landroid/support/graphics/drawable/i$d;-><init>(Landroid/support/graphics/drawable/i$1;)V

    .line 1430
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i$c;->a:Landroid/graphics/Matrix;

    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    .line 1436
    iput v1, p0, Landroid/support/graphics/drawable/i$c;->c:F

    .line 1437
    iput v1, p0, Landroid/support/graphics/drawable/i$c;->f:F

    .line 1438
    iput v1, p0, Landroid/support/graphics/drawable/i$c;->g:F

    .line 1439
    iput v2, p0, Landroid/support/graphics/drawable/i$c;->h:F

    .line 1440
    iput v2, p0, Landroid/support/graphics/drawable/i$c;->i:F

    .line 1441
    iput v1, p0, Landroid/support/graphics/drawable/i$c;->j:F

    .line 1442
    iput v1, p0, Landroid/support/graphics/drawable/i$c;->k:F

    .line 1446
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i$c;->d:Landroid/graphics/Matrix;

    .line 1449
    iput-object v3, p0, Landroid/support/graphics/drawable/i$c;->m:Ljava/lang/String;

    .line 1452
    iget v0, p1, Landroid/support/graphics/drawable/i$c;->c:F

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->c:F

    .line 1453
    iget v0, p1, Landroid/support/graphics/drawable/i$c;->f:F

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->f:F

    .line 1454
    iget v0, p1, Landroid/support/graphics/drawable/i$c;->g:F

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->g:F

    .line 1455
    iget v0, p1, Landroid/support/graphics/drawable/i$c;->h:F

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->h:F

    .line 1456
    iget v0, p1, Landroid/support/graphics/drawable/i$c;->i:F

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->i:F

    .line 1457
    iget v0, p1, Landroid/support/graphics/drawable/i$c;->j:F

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->j:F

    .line 1458
    iget v0, p1, Landroid/support/graphics/drawable/i$c;->k:F

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->k:F

    .line 1459
    iget-object v0, p1, Landroid/support/graphics/drawable/i$c;->l:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/i$c;->l:[I

    .line 1460
    iget-object v0, p1, Landroid/support/graphics/drawable/i$c;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/i$c;->m:Ljava/lang/String;

    .line 1461
    iget v0, p1, Landroid/support/graphics/drawable/i$c;->e:I

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->e:I

    .line 1462
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->m:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->d:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/graphics/drawable/i$c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1468
    iget-object v3, p1, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    .line 1469
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1470
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1471
    instance-of v2, v0, Landroid/support/graphics/drawable/i$c;

    if-eqz v2, :cond_2

    .line 1472
    check-cast v0, Landroid/support/graphics/drawable/i$c;

    .line 1473
    iget-object v2, p0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/graphics/drawable/i$c;

    invoke-direct {v4, v0, p2}, Landroid/support/graphics/drawable/i$c;-><init>(Landroid/support/graphics/drawable/i$c;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1476
    :cond_2
    instance-of v2, v0, Landroid/support/graphics/drawable/i$b;

    if-eqz v2, :cond_3

    .line 1477
    new-instance v2, Landroid/support/graphics/drawable/i$b;

    check-cast v0, Landroid/support/graphics/drawable/i$b;

    invoke-direct {v2, v0}, Landroid/support/graphics/drawable/i$b;-><init>(Landroid/support/graphics/drawable/i$b;)V

    move-object v0, v2

    .line 1483
    :goto_2
    iget-object v2, p0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    iget-object v2, v0, Landroid/support/graphics/drawable/i$e;->n:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1485
    iget-object v2, v0, Landroid/support/graphics/drawable/i$e;->n:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1478
    :cond_3
    instance-of v2, v0, Landroid/support/graphics/drawable/i$a;

    if-eqz v2, :cond_4

    .line 1479
    new-instance v2, Landroid/support/graphics/drawable/i$a;

    check-cast v0, Landroid/support/graphics/drawable/i$a;

    invoke-direct {v2, v0}, Landroid/support/graphics/drawable/i$a;-><init>(Landroid/support/graphics/drawable/i$a;)V

    move-object v0, v2

    goto :goto_2

    .line 1481
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown object in the tree!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1489
    :cond_5
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1548
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1549
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/i$c;->f:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/graphics/drawable/i$c;->g:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1550
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/i$c;->h:F

    iget v2, p0, Landroid/support/graphics/drawable/i$c;->i:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1551
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/i$c;->c:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1552
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/i$c;->j:F

    iget v2, p0, Landroid/support/graphics/drawable/i$c;->f:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/graphics/drawable/i$c;->k:F

    iget v3, p0, Landroid/support/graphics/drawable/i$c;->g:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1553
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/i$c;->l:[I

    .line 1517
    const-string v0, "rotation"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/graphics/drawable/i$c;->c:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->c:F

    .line 1520
    const/4 v0, 0x1

    iget v1, p0, Landroid/support/graphics/drawable/i$c;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->f:F

    .line 1521
    const/4 v0, 0x2

    iget v1, p0, Landroid/support/graphics/drawable/i$c;->g:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->g:F

    .line 1524
    const-string v0, "scaleX"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/graphics/drawable/i$c;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->h:F

    .line 1528
    const-string v0, "scaleY"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/graphics/drawable/i$c;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->i:F

    .line 1531
    const-string v0, "translateX"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/graphics/drawable/i$c;->j:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->j:F

    .line 1533
    const-string v0, "translateY"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/graphics/drawable/i$c;->k:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$c;->k:F

    .line 1536
    const/4 v0, 0x0

    .line 1537
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1538
    if-eqz v0, :cond_0

    .line 1539
    iput-object v0, p0, Landroid/support/graphics/drawable/i$c;->m:Ljava/lang/String;

    .line 1542
    :cond_0
    invoke-direct {p0}, Landroid/support/graphics/drawable/i$c;->a()V

    .line 1543
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1503
    sget-object v0, Landroid/support/graphics/drawable/a;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1505
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/i$c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1506
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1507
    return-void
.end method

.method public a([I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1659
    move v1, v0

    move v2, v0

    .line 1660
    :goto_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1661
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/graphics/drawable/i$d;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i$d;->a([I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 1660
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1663
    :cond_0
    return v2
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1649
    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1650
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/graphics/drawable/i$d;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/i$d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1651
    const/4 v2, 0x1

    .line 1654
    :cond_0
    return v2

    .line 1649
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Landroid/support/graphics/drawable/i$c;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 1571
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->f:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 1584
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->g:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 1558
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->c:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 1597
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->h:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 1610
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->i:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 1623
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->j:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 1636
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->k:F

    return v0
.end method

.method public setPivotX(F)V
    .locals 1

    .prologue
    .line 1576
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1577
    iput p1, p0, Landroid/support/graphics/drawable/i$c;->f:F

    .line 1578
    invoke-direct {p0}, Landroid/support/graphics/drawable/i$c;->a()V

    .line 1580
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .prologue
    .line 1589
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1590
    iput p1, p0, Landroid/support/graphics/drawable/i$c;->g:F

    .line 1591
    invoke-direct {p0}, Landroid/support/graphics/drawable/i$c;->a()V

    .line 1593
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .prologue
    .line 1563
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1564
    iput p1, p0, Landroid/support/graphics/drawable/i$c;->c:F

    .line 1565
    invoke-direct {p0}, Landroid/support/graphics/drawable/i$c;->a()V

    .line 1567
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .prologue
    .line 1602
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1603
    iput p1, p0, Landroid/support/graphics/drawable/i$c;->h:F

    .line 1604
    invoke-direct {p0}, Landroid/support/graphics/drawable/i$c;->a()V

    .line 1606
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .prologue
    .line 1615
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1616
    iput p1, p0, Landroid/support/graphics/drawable/i$c;->i:F

    .line 1617
    invoke-direct {p0}, Landroid/support/graphics/drawable/i$c;->a()V

    .line 1619
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    .prologue
    .line 1628
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1629
    iput p1, p0, Landroid/support/graphics/drawable/i$c;->j:F

    .line 1630
    invoke-direct {p0}, Landroid/support/graphics/drawable/i$c;->a()V

    .line 1632
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    .prologue
    .line 1641
    iget v0, p0, Landroid/support/graphics/drawable/i$c;->k:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1642
    iput p1, p0, Landroid/support/graphics/drawable/i$c;->k:F

    .line 1643
    invoke-direct {p0}, Landroid/support/graphics/drawable/i$c;->a()V

    .line 1645
    :cond_0
    return-void
.end method
