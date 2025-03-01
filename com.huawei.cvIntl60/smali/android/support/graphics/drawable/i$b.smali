.class Landroid/support/graphics/drawable/i$b;
.super Landroid/support/graphics/drawable/i$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Landroid/support/v4/content/res/ComplexColorCompat;

.field b:F

.field c:Landroid/support/v4/content/res/ComplexColorCompat;

.field d:F

.field e:I

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/Paint$Cap;

.field k:Landroid/graphics/Paint$Join;

.field l:F

.field private p:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1817
    invoke-direct {p0}, Landroid/support/graphics/drawable/i$e;-><init>()V

    .line 1802
    iput v1, p0, Landroid/support/graphics/drawable/i$b;->b:F

    .line 1805
    iput v2, p0, Landroid/support/graphics/drawable/i$b;->d:F

    .line 1807
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->e:I

    .line 1808
    iput v2, p0, Landroid/support/graphics/drawable/i$b;->f:F

    .line 1809
    iput v1, p0, Landroid/support/graphics/drawable/i$b;->g:F

    .line 1810
    iput v2, p0, Landroid/support/graphics/drawable/i$b;->h:F

    .line 1811
    iput v1, p0, Landroid/support/graphics/drawable/i$b;->i:F

    .line 1813
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->j:Landroid/graphics/Paint$Cap;

    .line 1814
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->k:Landroid/graphics/Paint$Join;

    .line 1815
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->l:F

    .line 1819
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/i$b;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1822
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/i$e;-><init>(Landroid/support/graphics/drawable/i$e;)V

    .line 1802
    iput v1, p0, Landroid/support/graphics/drawable/i$b;->b:F

    .line 1805
    iput v2, p0, Landroid/support/graphics/drawable/i$b;->d:F

    .line 1807
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->e:I

    .line 1808
    iput v2, p0, Landroid/support/graphics/drawable/i$b;->f:F

    .line 1809
    iput v1, p0, Landroid/support/graphics/drawable/i$b;->g:F

    .line 1810
    iput v2, p0, Landroid/support/graphics/drawable/i$b;->h:F

    .line 1811
    iput v1, p0, Landroid/support/graphics/drawable/i$b;->i:F

    .line 1813
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->j:Landroid/graphics/Paint$Cap;

    .line 1814
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->k:Landroid/graphics/Paint$Join;

    .line 1815
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->l:F

    .line 1823
    iget-object v0, p1, Landroid/support/graphics/drawable/i$b;->p:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->p:[I

    .line 1825
    iget-object v0, p1, Landroid/support/graphics/drawable/i$b;->a:Landroid/support/v4/content/res/ComplexColorCompat;

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->a:Landroid/support/v4/content/res/ComplexColorCompat;

    .line 1826
    iget v0, p1, Landroid/support/graphics/drawable/i$b;->b:F

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->b:F

    .line 1827
    iget v0, p1, Landroid/support/graphics/drawable/i$b;->d:F

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->d:F

    .line 1828
    iget-object v0, p1, Landroid/support/graphics/drawable/i$b;->c:Landroid/support/v4/content/res/ComplexColorCompat;

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->c:Landroid/support/v4/content/res/ComplexColorCompat;

    .line 1829
    iget v0, p1, Landroid/support/graphics/drawable/i$b;->e:I

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->e:I

    .line 1830
    iget v0, p1, Landroid/support/graphics/drawable/i$b;->f:F

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->f:F

    .line 1831
    iget v0, p1, Landroid/support/graphics/drawable/i$b;->g:F

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->g:F

    .line 1832
    iget v0, p1, Landroid/support/graphics/drawable/i$b;->h:F

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->h:F

    .line 1833
    iget v0, p1, Landroid/support/graphics/drawable/i$b;->i:F

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->i:F

    .line 1835
    iget-object v0, p1, Landroid/support/graphics/drawable/i$b;->j:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->j:Landroid/graphics/Paint$Cap;

    .line 1836
    iget-object v0, p1, Landroid/support/graphics/drawable/i$b;->k:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->k:Landroid/graphics/Paint$Join;

    .line 1837
    iget v0, p1, Landroid/support/graphics/drawable/i$b;->l:F

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->l:F

    .line 1838
    return-void
.end method

.method private a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 0

    .prologue
    .line 1841
    packed-switch p1, :pswitch_data_0

    .line 1849
    :goto_0
    return-object p2

    .line 1843
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1845
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1847
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1841
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 0

    .prologue
    .line 1854
    packed-switch p1, :pswitch_data_0

    .line 1862
    :goto_0
    return-object p2

    .line 1856
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1858
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1860
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1854
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1883
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->p:[I

    .line 1890
    const-string v0, "pathData"

    invoke-static {p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1891
    if-nez v0, :cond_0

    .line 1938
    :goto_0
    return-void

    .line 1897
    :cond_0
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1899
    if-eqz v0, :cond_1

    .line 1900
    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->n:Ljava/lang/String;

    .line 1902
    :cond_1
    const/4 v0, 0x2

    .line 1903
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1904
    if-eqz v0, :cond_2

    .line 1905
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1908
    :cond_2
    const-string v3, "fillColor"

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroid/support/v4/content/res/ComplexColorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->c:Landroid/support/v4/content/res/ComplexColorCompat;

    .line 1910
    const-string v0, "fillAlpha"

    const/16 v1, 0xc

    iget v2, p0, Landroid/support/graphics/drawable/i$b;->f:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->f:F

    .line 1912
    const-string v0, "strokeLineCap"

    const/16 v1, 0x8

    invoke-static {p1, p2, v0, v1, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1914
    iget-object v1, p0, Landroid/support/graphics/drawable/i$b;->j:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v1}, Landroid/support/graphics/drawable/i$b;->a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->j:Landroid/graphics/Paint$Cap;

    .line 1915
    const-string v0, "strokeLineJoin"

    const/16 v1, 0x9

    invoke-static {p1, p2, v0, v1, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1917
    iget-object v1, p0, Landroid/support/graphics/drawable/i$b;->k:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Landroid/support/graphics/drawable/i$b;->a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->k:Landroid/graphics/Paint$Join;

    .line 1918
    const-string v0, "strokeMiterLimit"

    const/16 v1, 0xa

    iget v2, p0, Landroid/support/graphics/drawable/i$b;->l:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->l:F

    .line 1921
    const-string v3, "strokeColor"

    const/4 v4, 0x3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroid/support/v4/content/res/ComplexColorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i$b;->a:Landroid/support/v4/content/res/ComplexColorCompat;

    .line 1923
    const-string v0, "strokeAlpha"

    const/16 v1, 0xb

    iget v2, p0, Landroid/support/graphics/drawable/i$b;->d:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->d:F

    .line 1925
    const-string v0, "strokeWidth"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/graphics/drawable/i$b;->b:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->b:F

    .line 1927
    const-string v0, "trimPathEnd"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/graphics/drawable/i$b;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->h:F

    .line 1929
    const-string v0, "trimPathOffset"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/graphics/drawable/i$b;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->i:F

    .line 1932
    const-string v0, "trimPathStart"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/graphics/drawable/i$b;->g:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->g:F

    .line 1935
    const-string v0, "fillType"

    const/16 v1, 0xd

    iget v2, p0, Landroid/support/graphics/drawable/i$b;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/i$b;->e:I

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1872
    sget-object v0, Landroid/support/graphics/drawable/a;->c:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1874
    invoke-direct {p0, v0, p4, p3}, Landroid/support/graphics/drawable/i$b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 1875
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1876
    return-void
.end method

.method public a([I)Z
    .locals 2

    .prologue
    .line 1947
    iget-object v0, p0, Landroid/support/graphics/drawable/i$b;->c:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result v0

    .line 1948
    iget-object v1, p0, Landroid/support/graphics/drawable/i$b;->a:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1949
    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Landroid/support/graphics/drawable/i$b;->c:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroid/support/v4/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/i$b;->a:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroid/support/v4/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFillAlpha()F
    .locals 1

    .prologue
    .line 2010
    iget v0, p0, Landroid/support/graphics/drawable/i$b;->f:F

    return v0
.end method

.method getFillColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 2000
    iget-object v0, p0, Landroid/support/graphics/drawable/i$b;->c:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroid/support/v4/content/res/ComplexColorCompat;->getColor()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .prologue
    .line 1989
    iget v0, p0, Landroid/support/graphics/drawable/i$b;->d:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 1969
    iget-object v0, p0, Landroid/support/graphics/drawable/i$b;->a:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroid/support/v4/content/res/ComplexColorCompat;->getColor()I

    move-result v0

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .prologue
    .line 1979
    iget v0, p0, Landroid/support/graphics/drawable/i$b;->b:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .prologue
    .line 2030
    iget v0, p0, Landroid/support/graphics/drawable/i$b;->h:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .prologue
    .line 2040
    iget v0, p0, Landroid/support/graphics/drawable/i$b;->i:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .prologue
    .line 2020
    iget v0, p0, Landroid/support/graphics/drawable/i$b;->g:F

    return v0
.end method

.method setFillAlpha(F)V
    .locals 0

    .prologue
    .line 2015
    iput p1, p0, Landroid/support/graphics/drawable/i$b;->f:F

    .line 2016
    return-void
.end method

.method setFillColor(I)V
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Landroid/support/graphics/drawable/i$b;->c:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/res/ComplexColorCompat;->setColor(I)V

    .line 2006
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0

    .prologue
    .line 1994
    iput p1, p0, Landroid/support/graphics/drawable/i$b;->d:F

    .line 1995
    return-void
.end method

.method setStrokeColor(I)V
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Landroid/support/graphics/drawable/i$b;->a:Landroid/support/v4/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/res/ComplexColorCompat;->setColor(I)V

    .line 1975
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0

    .prologue
    .line 1984
    iput p1, p0, Landroid/support/graphics/drawable/i$b;->b:F

    .line 1985
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0

    .prologue
    .line 2035
    iput p1, p0, Landroid/support/graphics/drawable/i$b;->h:F

    .line 2036
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0

    .prologue
    .line 2045
    iput p1, p0, Landroid/support/graphics/drawable/i$b;->i:F

    .line 2046
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0

    .prologue
    .line 2025
    iput p1, p0, Landroid/support/graphics/drawable/i$b;->g:F

    .line 2026
    return-void
.end method
