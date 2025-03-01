.class public Lui_Controller/ui_Liveview/UI_LiveViewController$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
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

.field private d:[Ljava/lang/String;

.field private e:Ljava/util/List;
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
.method public constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;[ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1706
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1707
    iput-object p3, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->c:Ljava/util/List;

    .line 1708
    iput-object p5, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->b:[I

    .line 1709
    iput-object p4, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->d:[Ljava/lang/String;

    .line 1710
    iput-object p6, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->e:Ljava/util/List;

    .line 1711
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1714
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->notifyDataSetChanged()V

    .line 1715
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1723
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1728
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 1733
    .line 1734
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1736
    const v0, 0x7f10010c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1737
    const v1, 0x7f10010d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1738
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v3, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(Lui_Controller/ui_Liveview/UI_LiveViewController;)I

    move-result v3

    div-int/lit8 v3, v3, 0xb

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1739
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->c(Lui_Controller/ui_Liveview/UI_LiveViewController;)I

    move-result v1

    div-int/lit8 v1, v1, 0xb

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1741
    const v0, 0x7f10010e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1742
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1743
    const v0, 0x7f1000f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1744
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1745
    const v0, 0x7f1000fc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1746
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$a;->d:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    return-object v2
.end method
