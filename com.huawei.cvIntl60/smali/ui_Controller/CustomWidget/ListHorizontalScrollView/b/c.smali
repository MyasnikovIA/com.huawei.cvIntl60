.class public Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;
.super Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Z

.field private c:LGeneralFunction/e/d;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 19
    invoke-direct {p0}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;-><init>()V

    .line 11
    iput-object v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->a:Landroid/graphics/Bitmap;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->b:Z

    .line 14
    iput-object v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->c:LGeneralFunction/e/d;

    .line 15
    iput v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->d:I

    .line 16
    iput v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->e:I

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->c:LGeneralFunction/e/d;

    iget v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->d:I

    iget v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->e:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->e(II)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->c:LGeneralFunction/e/d;

    iget v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->d:I

    iget v3, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->e:I

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->a(II)I

    move-result v1

    .line 44
    if-nez v0, :cond_1

    .line 45
    const/4 v0, 0x0

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 47
    invoke-static {v0}, LGeneralFunction/g/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->a:Landroid/graphics/Bitmap;

    .line 68
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->b:Z

    .line 80
    return-void
.end method

.method public b()I
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->c:LGeneralFunction/e/d;

    iget v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->d:I

    iget v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->e:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->b(II)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->c:LGeneralFunction/e/d;

    iget v1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->d:I

    iget v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->e:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->c(II)I

    move-result v0

    return v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;->b:Z

    return v0
.end method
