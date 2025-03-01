.class Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;
.super Landroid/support/v7/widget/RecyclerView$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field q:Landroid/widget/ImageView;

.field final synthetic r:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;


# direct methods
.method public constructor <init>(Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;->r:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    .line 92
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 93
    const v0, 0x7f1000f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;->q:Landroid/widget/ImageView;

    .line 94
    return-void
.end method
