.class Landroid/support/v7/widget/bc$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bc;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bc;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Landroid/support/v7/widget/bc$a;->a:Landroid/support/v7/widget/bc;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 523
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/support/v7/widget/bc$a;->a:Landroid/support/v7/widget/bc;

    iget-object v0, v0, Landroid/support/v7/widget/bc;->b:Landroid/support/v7/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/widget/aq;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v7/widget/bc$a;->a:Landroid/support/v7/widget/bc;

    iget-object v0, v0, Landroid/support/v7/widget/bc;->b:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aq;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bc$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/bc$c;->b()Landroid/support/v7/app/a$c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 537
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 542
    if-nez p2, :cond_0

    .line 543
    iget-object v1, p0, Landroid/support/v7/widget/bc$a;->a:Landroid/support/v7/widget/bc;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bc$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/a$c;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/bc;->a(Landroid/support/v7/app/a$c;Z)Landroid/support/v7/widget/bc$c;

    move-result-object p2

    .line 547
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 545
    check-cast v0, Landroid/support/v7/widget/bc$c;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bc$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/a$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bc$c;->a(Landroid/support/v7/app/a$c;)V

    goto :goto_0
.end method
