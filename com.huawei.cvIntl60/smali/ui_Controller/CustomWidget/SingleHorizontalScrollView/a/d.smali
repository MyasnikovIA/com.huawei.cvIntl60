.class public Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Matrix;

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    .line 14
    iput v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->b:F

    .line 15
    iput v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->c:F

    .line 16
    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .prologue
    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 21
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 22
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
