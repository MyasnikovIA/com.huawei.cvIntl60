.class Lcom/tonicartos/widget/stickygridheaders/c$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tonicartos/widget/stickygridheaders/c;


# direct methods
.method constructor <init>(Lcom/tonicartos/widget/stickygridheaders/c;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/c$1;->a:Lcom/tonicartos/widget/stickygridheaders/c;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/c$1;->a:Lcom/tonicartos/widget/stickygridheaders/c;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/c;->notifyDataSetChanged()V

    .line 16
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/c$1;->a:Lcom/tonicartos/widget/stickygridheaders/c;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/c;->notifyDataSetInvalidated()V

    .line 21
    return-void
.end method
