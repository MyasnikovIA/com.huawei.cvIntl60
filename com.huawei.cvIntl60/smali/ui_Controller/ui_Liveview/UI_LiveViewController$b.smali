.class public Lui_Controller/ui_Liveview/UI_LiveViewController$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Liveview/UI_LiveViewController;

.field private b:[I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;Landroid/content/Context;Ljava/util/List;[ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1757
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1758
    iput-object p3, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->c:Ljava/util/List;

    .line 1759
    iput-object p4, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->b:[I

    .line 1760
    iput-object p5, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->d:Ljava/util/List;

    .line 1761
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1764
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->notifyDataSetChanged()V

    .line 1765
    return-void
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const v3, 0x7f100115

    .line 1769
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1771
    if-ne v1, p1, :cond_0

    .line 1772
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1773
    const v2, 0x7f0202ac

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1769
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1777
    :cond_0
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1778
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1779
    const v2, 0x7f0202ab

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1782
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1791
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1796
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1801
    .line 1802
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1804
    const v0, 0x7f100113

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1805
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(Lui_Controller/ui_Liveview/UI_LiveViewController;)I

    move-result v1

    div-int/lit8 v1, v1, 0xb

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1806
    const v0, 0x7f100114

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1807
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(Lui_Controller/ui_Liveview/UI_LiveViewController;)I

    move-result v1

    div-int/lit8 v1, v1, 0xb

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1809
    const v0, 0x7f1000fc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1810
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1811
    const v0, 0x7f100115

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1812
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$b;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1814
    return-object v2
.end method
