.class public Landroid/support/graphics/drawable/i;
.super Landroid/support/graphics/drawable/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/i$b;,
        Landroid/support/graphics/drawable/i$a;,
        Landroid/support/graphics/drawable/i$e;,
        Landroid/support/graphics/drawable/i$c;,
        Landroid/support/graphics/drawable/i$d;,
        Landroid/support/graphics/drawable/i$f;,
        Landroid/support/graphics/drawable/i$g;,
        Landroid/support/graphics/drawable/i$h;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private b:Landroid/support/graphics/drawable/i$g;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/graphics/drawable/i;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/support/graphics/drawable/h;-><init>()V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/i;->g:Z

    .line 317
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->i:[F

    .line 318
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->j:Landroid/graphics/Matrix;

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    .line 322
    new-instance v0, Landroid/support/graphics/drawable/i$g;

    invoke-direct {v0}, Landroid/support/graphics/drawable/i$g;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    .line 323
    return-void
.end method

.method constructor <init>(Landroid/support/graphics/drawable/i$g;)V
    .locals 3
    .param p1    # Landroid/support/graphics/drawable/i$g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 325
    invoke-direct {p0}, Landroid/support/graphics/drawable/h;-><init>()V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/i;->g:Z

    .line 317
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->i:[F

    .line 318
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->j:Landroid/graphics/Matrix;

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    .line 326
    iput-object p1, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    .line 327
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroid/support/graphics/drawable/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/support/graphics/drawable/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/graphics/drawable/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 328
    return-void
.end method

.method static a(IF)I
    .locals 2

    .prologue
    .line 679
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 680
    const v1, 0xffffff

    and-int/2addr v1, p0

    .line 681
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 682
    return v0
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .prologue
    .line 726
    packed-switch p0, :pswitch_data_0

    .line 740
    :goto_0
    :pswitch_0
    return-object p1

    .line 728
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 730
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 732
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 734
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 736
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 738
    :pswitch_6
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/i;
    .locals 5
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 637
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 638
    new-instance v0, Landroid/support/graphics/drawable/i;

    invoke-direct {v0}, Landroid/support/graphics/drawable/i;-><init>()V

    .line 639
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    .line 640
    new-instance v1, Landroid/support/graphics/drawable/i$h;

    iget-object v2, v0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    .line 641
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/graphics/drawable/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v1, v0, Landroid/support/graphics/drawable/i;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 662
    :goto_0
    return-object v0

    .line 646
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 647
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 649
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 653
    :cond_2
    if-eq v2, v4, :cond_3

    .line 654
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 657
    :catch_0
    move-exception v0

    .line 658
    const-string v1, "VectorDrawableCompat"

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 656
    :cond_3
    :try_start_1
    invoke-static {p0, v0, v1, p2}, Landroid/support/graphics/drawable/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/i;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 659
    :catch_1
    move-exception v0

    .line 660
    const-string v1, "VectorDrawableCompat"

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/i;
    .locals 1

    .prologue
    .line 673
    new-instance v0, Landroid/support/graphics/drawable/i;

    invoke-direct {v0}, Landroid/support/graphics/drawable/i;-><init>()V

    .line 674
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/graphics/drawable/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 675
    return-object v0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 746
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    .line 747
    iget-object v1, v0, Landroid/support/graphics/drawable/i$g;->b:Landroid/support/graphics/drawable/i$f;

    .line 752
    const-string v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {p1, p2, v2, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 754
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroid/support/graphics/drawable/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Landroid/support/graphics/drawable/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 756
    const/4 v2, 0x1

    .line 757
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 758
    if-eqz v2, :cond_0

    .line 759
    iput-object v2, v0, Landroid/support/graphics/drawable/i$g;->c:Landroid/content/res/ColorStateList;

    .line 762
    :cond_0
    const-string v2, "autoMirrored"

    const/4 v3, 0x5

    iget-boolean v4, v0, Landroid/support/graphics/drawable/i$g;->e:Z

    invoke-static {p1, p2, v2, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/graphics/drawable/i$g;->e:Z

    .line 765
    const-string v0, "viewportWidth"

    const/4 v2, 0x7

    iget v3, v1, Landroid/support/graphics/drawable/i$f;->f:F

    invoke-static {p1, p2, v0, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, Landroid/support/graphics/drawable/i$f;->f:F

    .line 769
    const-string v0, "viewportHeight"

    const/16 v2, 0x8

    iget v3, v1, Landroid/support/graphics/drawable/i$f;->g:F

    invoke-static {p1, p2, v0, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, Landroid/support/graphics/drawable/i$f;->g:F

    .line 773
    iget v0, v1, Landroid/support/graphics/drawable/i$f;->f:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    .line 774
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_1
    iget v0, v1, Landroid/support/graphics/drawable/i$f;->g:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    .line 777
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_2
    const/4 v0, 0x3

    iget v2, v1, Landroid/support/graphics/drawable/i$f;->d:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Landroid/support/graphics/drawable/i$f;->d:F

    .line 783
    const/4 v0, 0x2

    iget v2, v1, Landroid/support/graphics/drawable/i$f;->e:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Landroid/support/graphics/drawable/i$f;->e:F

    .line 785
    iget v0, v1, Landroid/support/graphics/drawable/i$f;->d:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    .line 786
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_3
    iget v0, v1, Landroid/support/graphics/drawable/i$f;->e:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_4

    .line 789
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_4
    const-string v0, "alpha"

    const/4 v2, 0x4

    .line 795
    invoke-virtual {v1}, Landroid/support/graphics/drawable/i$f;->getAlpha()F

    move-result v3

    .line 794
    invoke-static {p1, p2, v0, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 796
    invoke-virtual {v1, v0}, Landroid/support/graphics/drawable/i$f;->setAlpha(F)V

    .line 798
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_5

    .line 800
    iput-object v0, v1, Landroid/support/graphics/drawable/i$f;->i:Ljava/lang/String;

    .line 801
    iget-object v2, v1, Landroid/support/graphics/drawable/i$f;->k:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :cond_5
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 898
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 899
    invoke-virtual {p0}, Landroid/support/graphics/drawable/i;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 902
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 900
    goto :goto_0

    :cond_1
    move v0, v1

    .line 902
    goto :goto_0
.end method

.method private b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    .line 807
    iget-object v3, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    .line 808
    iget-object v4, v3, Landroid/support/graphics/drawable/i$g;->b:Landroid/support/graphics/drawable/i$f;

    .line 813
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 814
    iget-object v0, v4, Landroid/support/graphics/drawable/i$f;->c:Landroid/support/graphics/drawable/i$c;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 816
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 817
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    move v1, v2

    .line 820
    :goto_0
    if-eq v0, v2, :cond_9

    .line 821
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ge v7, v6, :cond_0

    if-eq v0, v9, :cond_9

    .line 822
    :cond_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_8

    .line 823
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 824
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/graphics/drawable/i$c;

    .line 825
    const-string v8, "path"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 826
    new-instance v1, Landroid/support/graphics/drawable/i$b;

    invoke-direct {v1}, Landroid/support/graphics/drawable/i$b;-><init>()V

    .line 827
    invoke-virtual {v1, p1, p3, p4, p2}, Landroid/support/graphics/drawable/i$b;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 828
    iget-object v0, v0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-virtual {v1}, Landroid/support/graphics/drawable/i$b;->getPathName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, v4, Landroid/support/graphics/drawable/i$f;->k:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/i$b;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :cond_1
    const/4 v0, 0x0

    .line 833
    iget v7, v3, Landroid/support/graphics/drawable/i$g;->a:I

    iget v1, v1, Landroid/support/graphics/drawable/i$b;->o:I

    or-int/2addr v1, v7

    iput v1, v3, Landroid/support/graphics/drawable/i$g;->a:I

    :goto_1
    move v1, v0

    .line 859
    :cond_2
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 834
    :cond_3
    const-string v8, "clip-path"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 835
    new-instance v7, Landroid/support/graphics/drawable/i$a;

    invoke-direct {v7}, Landroid/support/graphics/drawable/i$a;-><init>()V

    .line 836
    invoke-virtual {v7, p1, p3, p4, p2}, Landroid/support/graphics/drawable/i$a;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 837
    iget-object v0, v0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {v7}, Landroid/support/graphics/drawable/i$a;->getPathName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 839
    iget-object v0, v4, Landroid/support/graphics/drawable/i$f;->k:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7}, Landroid/support/graphics/drawable/i$a;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    :cond_4
    iget v0, v3, Landroid/support/graphics/drawable/i$g;->a:I

    iget v7, v7, Landroid/support/graphics/drawable/i$a;->o:I

    or-int/2addr v0, v7

    iput v0, v3, Landroid/support/graphics/drawable/i$g;->a:I

    move v0, v1

    .line 842
    goto :goto_1

    :cond_5
    const-string v8, "group"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 843
    new-instance v7, Landroid/support/graphics/drawable/i$c;

    invoke-direct {v7}, Landroid/support/graphics/drawable/i$c;-><init>()V

    .line 844
    invoke-virtual {v7, p1, p3, p4, p2}, Landroid/support/graphics/drawable/i$c;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 845
    iget-object v0, v0, Landroid/support/graphics/drawable/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {v5, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 847
    invoke-virtual {v7}, Landroid/support/graphics/drawable/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 848
    iget-object v0, v4, Landroid/support/graphics/drawable/i$f;->k:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7}, Landroid/support/graphics/drawable/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :cond_6
    iget v0, v3, Landroid/support/graphics/drawable/i$g;->a:I

    iget v7, v7, Landroid/support/graphics/drawable/i$c;->e:I

    or-int/2addr v0, v7

    iput v0, v3, Landroid/support/graphics/drawable/i$g;->a:I

    :cond_7
    move v0, v1

    goto :goto_1

    .line 853
    :cond_8
    if-ne v0, v9, :cond_2

    .line 854
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 855
    const-string v7, "group"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 867
    :cond_9
    if-eqz v1, :cond_a

    .line 868
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no path defined"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_a
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 469
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 470
    :cond_0
    const/4 v0, 0x0

    .line 475
    :goto_0
    return-object v0

    .line 474
    :cond_1
    invoke-virtual {p0}, Landroid/support/graphics/drawable/i;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 475
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->b:Landroid/support/graphics/drawable/i$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$f;->k:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 893
    iput-boolean p1, p0, Landroid/support/graphics/drawable/i;->g:Z

    .line 894
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/h;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    .line 583
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/16 v9, 0x800

    const/4 v8, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 360
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/graphics/drawable/i;->copyBounds(Landroid/graphics/Rect;)V

    .line 367
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 379
    :goto_1
    iget-object v1, p0, Landroid/support/graphics/drawable/i;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 380
    iget-object v1, p0, Landroid/support/graphics/drawable/i;->j:Landroid/graphics/Matrix;

    iget-object v3, p0, Landroid/support/graphics/drawable/i;->i:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 381
    iget-object v1, p0, Landroid/support/graphics/drawable/i;->i:[F

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 382
    iget-object v1, p0, Landroid/support/graphics/drawable/i;->i:[F

    const/4 v4, 0x4

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 384
    iget-object v4, p0, Landroid/support/graphics/drawable/i;->i:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 385
    iget-object v5, p0, Landroid/support/graphics/drawable/i;->i:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 388
    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_3

    :cond_2
    move v1, v2

    move v3, v2

    .line 393
    :cond_3
    iget-object v4, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 394
    iget-object v4, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 395
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 396
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 398
    if-lez v3, :cond_0

    if-lez v1, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 403
    iget-object v5, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    invoke-direct {p0}, Landroid/support/graphics/drawable/i;->a()Z

    move-result v5

    .line 407
    if-eqz v5, :cond_4

    .line 408
    iget-object v5, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 415
    :cond_4
    iget-object v2, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v2, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 417
    iget-object v2, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    invoke-virtual {v2, v3, v1}, Landroid/support/graphics/drawable/i$g;->b(II)V

    .line 418
    iget-boolean v2, p0, Landroid/support/graphics/drawable/i;->g:Z

    if-nez v2, :cond_7

    .line 419
    iget-object v2, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    invoke-virtual {v2, v3, v1}, Landroid/support/graphics/drawable/i$g;->a(II)V

    .line 426
    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iget-object v2, p0, Landroid/support/graphics/drawable/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Landroid/support/graphics/drawable/i$g;->a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 427
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 373
    :cond_6
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->e:Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    .line 421
    :cond_7
    iget-object v2, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    invoke-virtual {v2}, Landroid/support/graphics/drawable/i$g;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 422
    iget-object v2, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    invoke-virtual {v2, v3, v1}, Landroid/support/graphics/drawable/i$g;->a(II)V

    .line 423
    iget-object v1, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/i$g;->c()V

    goto :goto_2
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 436
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->b:Landroid/support/graphics/drawable/i$f;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/i$f;->getRootAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 919
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/i$g;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 352
    new-instance v0, Landroid/support/graphics/drawable/i$h;

    iget-object v1, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 355
    :goto_0
    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/graphics/drawable/i$g;->a:I

    .line 355
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 573
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->b:Landroid/support/graphics/drawable/i$f;

    iget v0, v0, Landroid/support/graphics/drawable/i$f;->e:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 564
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->b:Landroid/support/graphics/drawable/i$f;

    iget v0, v0, Landroid/support/graphics/drawable/i$f;->d:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 555
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/h;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .prologue
    .line 699
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 718
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    .line 705
    new-instance v1, Landroid/support/graphics/drawable/i$f;

    invoke-direct {v1}, Landroid/support/graphics/drawable/i$f;-><init>()V

    .line 706
    iput-object v1, v0, Landroid/support/graphics/drawable/i$g;->b:Landroid/support/graphics/drawable/i$f;

    .line 708
    sget-object v1, Landroid/support/graphics/drawable/a;->a:[I

    invoke-static {p1, p4, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 711
    invoke-direct {p0, v1, p2}, Landroid/support/graphics/drawable/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 712
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 713
    invoke-virtual {p0}, Landroid/support/graphics/drawable/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/graphics/drawable/i$g;->a:I

    .line 714
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/graphics/drawable/i$g;->k:Z

    .line 715
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/i;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 717
    iget-object v1, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/support/graphics/drawable/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/graphics/drawable/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 929
    :goto_0
    return-void

    .line 928
    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->invalidateSelf()V

    goto :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 591
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iget-boolean v0, v0, Landroid/support/graphics/drawable/i$g;->e:Z

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 526
    :goto_0
    return v0

    .line 524
    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    .line 525
    invoke-virtual {v0}, Landroid/support/graphics/drawable/i$g;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->c:Landroid/content/res/ColorStateList;

    .line 526
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 341
    :cond_0
    :goto_0
    return-object p0

    .line 337
    :cond_1
    iget-boolean v0, p0, Landroid/support/graphics/drawable/i;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/graphics/drawable/h;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 338
    new-instance v0, Landroid/support/graphics/drawable/i$g;

    iget-object v1, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/i$g;-><init>(Landroid/support/graphics/drawable/i$g;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/i;->f:Z

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 912
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 531
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 546
    :cond_0
    :goto_0
    return v0

    .line 535
    :cond_1
    const/4 v0, 0x0

    .line 536
    iget-object v2, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    .line 537
    iget-object v3, v2, Landroid/support/graphics/drawable/i$g;->c:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/support/graphics/drawable/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_2

    .line 538
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, v2, Landroid/support/graphics/drawable/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v4, v2, Landroid/support/graphics/drawable/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v3, v4}, Landroid/support/graphics/drawable/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 539
    invoke-virtual {p0}, Landroid/support/graphics/drawable/i;->invalidateSelf()V

    move v0, v1

    .line 542
    :cond_2
    invoke-virtual {v2}, Landroid/support/graphics/drawable/i$g;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Landroid/support/graphics/drawable/i$g;->a([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    invoke-virtual {p0}, Landroid/support/graphics/drawable/i;->invalidateSelf()V

    move v0, v1

    .line 544
    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 938
    :goto_0
    return-void

    .line 937
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/graphics/drawable/h;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->b:Landroid/support/graphics/drawable/i$f;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/i$f;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 447
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->b:Landroid/support/graphics/drawable/i$f;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i$f;->setRootAlpha(I)V

    .line 448
    invoke-virtual {p0}, Landroid/support/graphics/drawable/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 601
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    iput-boolean p1, v0, Landroid/support/graphics/drawable/i$g;->e:Z

    goto :goto_0
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/h;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/h;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    iput-object p1, p0, Landroid/support/graphics/drawable/i;->e:Landroid/graphics/ColorFilter;

    .line 460
    invoke-virtual {p0}, Landroid/support/graphics/drawable/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/h;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/h;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/h;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 1

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/h;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/graphics/drawable/i;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    .line 496
    iget-object v1, v0, Landroid/support/graphics/drawable/i$g;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 497
    iput-object p1, v0, Landroid/support/graphics/drawable/i$g;->c:Landroid/content/res/ColorStateList;

    .line 498
    iget-object v1, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Landroid/support/graphics/drawable/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 499
    invoke-virtual {p0}, Landroid/support/graphics/drawable/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->b:Landroid/support/graphics/drawable/i$g;

    .line 511
    iget-object v1, v0, Landroid/support/graphics/drawable/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 512
    iput-object p1, v0, Landroid/support/graphics/drawable/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 513
    iget-object v1, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroid/support/graphics/drawable/i$g;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/graphics/drawable/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 514
    invoke-virtual {p0}, Landroid/support/graphics/drawable/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 945
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/h;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Landroid/support/graphics/drawable/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 955
    :goto_0
    return-void

    .line 954
    :cond_0
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/h;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
