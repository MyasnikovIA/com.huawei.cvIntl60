.class Landroid/support/graphics/drawable/i$a;
.super Landroid/support/graphics/drawable/i$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1750
    invoke-direct {p0}, Landroid/support/graphics/drawable/i$e;-><init>()V

    .line 1752
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/i$a;)V
    .locals 0

    .prologue
    .line 1755
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/i$e;-><init>(Landroid/support/graphics/drawable/i$e;)V

    .line 1756
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 1

    .prologue
    .line 1774
    const/4 v0, 0x0

    .line 1775
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1776
    if-eqz v0, :cond_0

    .line 1777
    iput-object v0, p0, Landroid/support/graphics/drawable/i$a;->n:Ljava/lang/String;

    .line 1780
    :cond_0
    const/4 v0, 0x1

    .line 1781
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1782
    if-eqz v0, :cond_1

    .line 1783
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i$a;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1785
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1760
    const-string v0, "pathData"

    invoke-static {p4, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1761
    if-nez v0, :cond_0

    .line 1768
    :goto_0
    return-void

    .line 1764
    :cond_0
    sget-object v0, Landroid/support/graphics/drawable/a;->d:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1766
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/i$a;->a(Landroid/content/res/TypedArray;)V

    .line 1767
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1789
    const/4 v0, 0x1

    return v0
.end method
