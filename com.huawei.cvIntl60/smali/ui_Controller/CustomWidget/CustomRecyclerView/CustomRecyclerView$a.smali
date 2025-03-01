.class Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;->a:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7fffffff

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;
    .locals 5

    .prologue
    .line 66
    .line 67
    new-instance v0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;

    iget-object v1, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;->a:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    iget-object v2, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;->a:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    invoke-static {v2}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->a(Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04004e

    const/4 v4, 0x0

    .line 68
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;-><init>(Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;Landroid/view/View;)V

    .line 69
    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;

    invoke-virtual {p0, p1, p2}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;->a(Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;I)V

    return-void
.end method

.method public a(Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;I)V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-lt p2, v0, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;->a:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->a(I)V

    .line 78
    :cond_1
    iget-object v0, p1, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;->a:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    invoke-static {v1}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->b(Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;->a(Landroid/view/ViewGroup;I)Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;

    move-result-object v0

    return-object v0
.end method
