.class public Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# virtual methods
.method public a(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/ListHorizontalScrollView/a/a;->b(I)Lui_Controller/CustomWidget/ListHorizontalScrollView/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
