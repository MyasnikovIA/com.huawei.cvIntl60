.class Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;
.super Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$g;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 1

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$g;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;)V
    .locals 0

    .prologue
    .line 1105
    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->e:Z

    if-eqz v0, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d:Lcom/tonicartos/widget/stickygridheaders/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d:Lcom/tonicartos/widget/stickygridheaders/b;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/b;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->a:I

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d:Lcom/tonicartos/widget/stickygridheaders/b;

    .line 1117
    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/b;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->a:I

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1122
    if-eqz v0, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->a:I

    invoke-static {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;I)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Landroid/view/View;J)Z

    goto :goto_0
.end method
