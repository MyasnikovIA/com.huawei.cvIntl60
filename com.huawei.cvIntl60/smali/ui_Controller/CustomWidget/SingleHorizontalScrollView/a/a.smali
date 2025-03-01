.class public Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public b(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;->c(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
