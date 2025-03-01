.class final Lcom/tonicartos/widget/stickygridheaders/e$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tonicartos/widget/stickygridheaders/e;


# direct methods
.method private constructor <init>(Lcom/tonicartos/widget/stickygridheaders/e;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/e$a;->a:Lcom/tonicartos/widget/stickygridheaders/e;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tonicartos/widget/stickygridheaders/e;Lcom/tonicartos/widget/stickygridheaders/e$1;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/e$a;-><init>(Lcom/tonicartos/widget/stickygridheaders/e;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e$a;->a:Lcom/tonicartos/widget/stickygridheaders/e;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/e$a;->a:Lcom/tonicartos/widget/stickygridheaders/e;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/e$a;->a:Lcom/tonicartos/widget/stickygridheaders/e;

    invoke-static {v2}, Lcom/tonicartos/widget/stickygridheaders/e;->a(Lcom/tonicartos/widget/stickygridheaders/e;)Lcom/tonicartos/widget/stickygridheaders/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/e;->a(Lcom/tonicartos/widget/stickygridheaders/d;)[Lcom/tonicartos/widget/stickygridheaders/e$b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/e;->a(Lcom/tonicartos/widget/stickygridheaders/e;[Lcom/tonicartos/widget/stickygridheaders/e$b;)[Lcom/tonicartos/widget/stickygridheaders/e$b;

    .line 121
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e$a;->a:Lcom/tonicartos/widget/stickygridheaders/e;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/e;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e$a;->a:Lcom/tonicartos/widget/stickygridheaders/e;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/e$a;->a:Lcom/tonicartos/widget/stickygridheaders/e;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/e$a;->a:Lcom/tonicartos/widget/stickygridheaders/e;

    invoke-static {v2}, Lcom/tonicartos/widget/stickygridheaders/e;->a(Lcom/tonicartos/widget/stickygridheaders/e;)Lcom/tonicartos/widget/stickygridheaders/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/e;->a(Lcom/tonicartos/widget/stickygridheaders/d;)[Lcom/tonicartos/widget/stickygridheaders/e$b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/e;->a(Lcom/tonicartos/widget/stickygridheaders/e;[Lcom/tonicartos/widget/stickygridheaders/e$b;)[Lcom/tonicartos/widget/stickygridheaders/e$b;

    .line 127
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/e$a;->a:Lcom/tonicartos/widget/stickygridheaders/e;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/e;->notifyDataSetInvalidated()V

    .line 128
    return-void
.end method
