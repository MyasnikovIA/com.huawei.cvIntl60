.class public Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;
.super Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:I


# virtual methods
.method public a(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    return-object v0
.end method

.method public synthetic b(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;->c(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;->c(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/b/c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 72
    .line 73
    if-nez p2, :cond_0

    .line 78
    new-instance v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/b;

    invoke-direct {v1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/b;-><init>()V

    .line 79
    iget-object v0, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f040068

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    const v0, 0x7f10014e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    .line 83
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;->c:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 85
    iget v2, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/a;->d:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 86
    iget-object v2, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 88
    iget-object v0, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v0, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    const v0, 0x7f10014f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_0
    return-object p2

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/ListHorizontalScrollView/b/b;

    goto :goto_0
.end method
