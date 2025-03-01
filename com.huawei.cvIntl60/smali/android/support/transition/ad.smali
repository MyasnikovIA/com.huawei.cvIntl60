.class Landroid/support/transition/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/support/transition/ah;

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 46
    new-instance v0, Landroid/support/transition/ag;

    invoke-direct {v0}, Landroid/support/transition/ag;-><init>()V

    sput-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    .line 59
    :goto_0
    new-instance v0, Landroid/support/transition/ad$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ad$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ad;->a:Landroid/util/Property;

    .line 74
    new-instance v0, Landroid/support/transition/ad$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ad$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ad;->b:Landroid/util/Property;

    return-void

    .line 47
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 48
    new-instance v0, Landroid/support/transition/af;

    invoke-direct {v0}, Landroid/support/transition/af;-><init>()V

    sput-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    goto :goto_0

    .line 49
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 50
    new-instance v0, Landroid/support/transition/ae;

    invoke-direct {v0}, Landroid/support/transition/ae;-><init>()V

    sput-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Landroid/support/transition/ah;

    invoke-direct {v0}, Landroid/support/transition/ah;-><init>()V

    sput-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    goto :goto_0
.end method

.method static a(Landroid/view/View;)Landroid/support/transition/ac;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 94
    new-instance v0, Landroid/support/transition/ab;

    invoke-direct {v0, p0}, Landroid/support/transition/ab;-><init>(Landroid/view/View;)V

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/support/transition/aa;->d(Landroid/view/View;)Landroid/support/transition/aa;

    move-result-object v0

    goto :goto_0
.end method

.method private static a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 214
    sget-boolean v0, Landroid/support/transition/ad;->e:Z

    if-nez v0, :cond_0

    .line 216
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mViewFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ad;->d:Ljava/lang/reflect/Field;

    .line 217
    sget-object v0, Landroid/support/transition/ad;->d:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    sput-boolean v2, Landroid/support/transition/ad;->e:Z

    .line 223
    :cond_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string v0, "ViewUtils"

    const-string v1, "fetchViewFlagsField: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static a(Landroid/view/View;F)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    sget-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ah;->a(Landroid/view/View;F)V

    .line 111
    return-void
.end method

.method static a(Landroid/view/View;I)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-static {}, Landroid/support/transition/ad;->a()V

    .line 149
    sget-object v0, Landroid/support/transition/ad;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    sget-object v0, Landroid/support/transition/ad;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 152
    sget-object v1, Landroid/support/transition/ad;->d:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr v0, p1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/view/View;IIII)V
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    sget-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/ah;->a(Landroid/view/View;IIII)V

    .line 211
    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    sget-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ah;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 173
    return-void
.end method

.method static b(Landroid/view/View;)Landroid/support/transition/al;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 104
    new-instance v0, Landroid/support/transition/ak;

    invoke-direct {v0, p0}, Landroid/support/transition/ak;-><init>(Landroid/view/View;)V

    .line 106
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/transition/aj;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/transition/aj;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method static b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 188
    sget-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ah;->b(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 189
    return-void
.end method

.method static c(Landroid/view/View;)F
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    sget-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    invoke-virtual {v0, p0}, Landroid/support/transition/ah;->a(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static d(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    sget-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    invoke-virtual {v0, p0}, Landroid/support/transition/ah;->b(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method static e(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    sget-object v0, Landroid/support/transition/ad;->c:Landroid/support/transition/ah;

    invoke-virtual {v0, p0}, Landroid/support/transition/ah;->c(Landroid/view/View;)V

    .line 132
    return-void
.end method
