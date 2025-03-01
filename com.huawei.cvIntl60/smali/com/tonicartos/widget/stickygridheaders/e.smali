.class public Lcom/tonicartos/widget/stickygridheaders/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/widget/stickygridheaders/e$b;,
        Lcom/tonicartos/widget/stickygridheaders/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tonicartos/widget/stickygridheaders/d;

.field private b:[Lcom/tonicartos/widget/stickygridheaders/e$b;


# direct methods
.method public constructor <init>(Lcom/tonicartos/widget/stickygridheaders/d;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/e;->a:Lcom/tonicartos/widget/stickygridheaders/d;

    .line 44
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/e$a;-><init>(Lcom/tonicartos/widget/stickygridheaders/e;Lcom/tonicartos/widget/stickygridheaders/e$1;)V

    invoke-interface {p1, v0}, Lcom/tonicartos/widget/stickygridheaders/d;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/e;->a(Lcom/tonicartos/widget/stickygridheaders/d;)[Lcom/tonicartos/widget/stickygridheaders/e$b;

    move-result-object v0

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->b:[Lcom/tonicartos/widget/stickygridheaders/e$b;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/tonicartos/widget/stickygridheaders/e;)Lcom/tonicartos/widget/stickygridheaders/d;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->a:Lcom/tonicartos/widget/stickygridheaders/d;

    return-object v0
.end method

.method static synthetic a(Lcom/tonicartos/widget/stickygridheaders/e;[Lcom/tonicartos/widget/stickygridheaders/e$b;)[Lcom/tonicartos/widget/stickygridheaders/e$b;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/e;->b:[Lcom/tonicartos/widget/stickygridheaders/e$b;

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->b:[Lcom/tonicartos/widget/stickygridheaders/e$b;

    array-length v0, v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->b:[Lcom/tonicartos/widget/stickygridheaders/e$b;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/e$b;->a()I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->a:Lcom/tonicartos/widget/stickygridheaders/d;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/e;->b:[Lcom/tonicartos/widget/stickygridheaders/e$b;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/e$b;->b()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/d;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/tonicartos/widget/stickygridheaders/d;)[Lcom/tonicartos/widget/stickygridheaders/e$b;
    .locals 6

    .prologue
    .line 99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Lcom/tonicartos/widget/stickygridheaders/d;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 103
    invoke-interface {p1, v1}, Lcom/tonicartos/widget/stickygridheaders/d;->a(I)J

    move-result-wide v4

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/e$b;

    .line 105
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/e$b;

    invoke-direct {v0, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/e$b;-><init>(Lcom/tonicartos/widget/stickygridheaders/e;I)V

    .line 107
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/e$b;->c()V

    .line 110
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/tonicartos/widget/stickygridheaders/e$b;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tonicartos/widget/stickygridheaders/e$b;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->a:Lcom/tonicartos/widget/stickygridheaders/d;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/d;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->a:Lcom/tonicartos/widget/stickygridheaders/d;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->a:Lcom/tonicartos/widget/stickygridheaders/d;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/d;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->a:Lcom/tonicartos/widget/stickygridheaders/d;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/d;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->a:Lcom/tonicartos/widget/stickygridheaders/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->a:Lcom/tonicartos/widget/stickygridheaders/d;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/d;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e;->a:Lcom/tonicartos/widget/stickygridheaders/d;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/d;->hasStableIds()Z

    move-result v0

    return v0
.end method
