.class Lcom/tonicartos/widget/stickygridheaders/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tonicartos/widget/stickygridheaders/e;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/tonicartos/widget/stickygridheaders/e;I)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/e$b;->a:Lcom/tonicartos/widget/stickygridheaders/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p2, p0, Lcom/tonicartos/widget/stickygridheaders/e$b;->c:I

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/e$b;->b:I

    .line 139
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/e$b;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/e$b;->c:I

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/e$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/e$b;->b:I

    .line 151
    return-void
.end method
