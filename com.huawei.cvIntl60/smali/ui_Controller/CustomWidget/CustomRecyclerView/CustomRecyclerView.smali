.class public Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$b;,
        Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;
    }
.end annotation


# instance fields
.field public M:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;

.field private N:Landroid/graphics/Bitmap;

.field private O:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->setOverScrollMode(I)V

    .line 34
    iput-object p1, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->O:Landroid/content/Context;

    .line 35
    new-instance v0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;

    invoke-direct {v0, p0}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;-><init>(Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->M:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;

    .line 36
    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->O:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->N:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$a;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->getAdapter()Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->M:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    .line 60
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->N:Landroid/graphics/Bitmap;

    .line 41
    return-void
.end method

.method public y()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->N:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->N:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->N:Landroid/graphics/Bitmap;

    .line 49
    :cond_0
    return-void
.end method
