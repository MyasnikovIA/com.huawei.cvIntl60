.class Landroid/support/v7/widget/bc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bc;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bc;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Landroid/support/v7/widget/bc$b;->a:Landroid/support/v7/widget/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 557
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/bc$c;

    .line 558
    invoke-virtual {v0}, Landroid/support/v7/widget/bc$c;->b()Landroid/support/v7/app/a$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a$c;->d()V

    .line 559
    iget-object v0, p0, Landroid/support/v7/widget/bc$b;->a:Landroid/support/v7/widget/bc;

    iget-object v0, v0, Landroid/support/v7/widget/bc;->b:Landroid/support/v7/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/widget/aq;->getChildCount()I

    move-result v3

    move v2, v1

    .line 560
    :goto_0
    if-ge v2, v3, :cond_1

    .line 561
    iget-object v0, p0, Landroid/support/v7/widget/bc$b;->a:Landroid/support/v7/widget/bc;

    iget-object v0, v0, Landroid/support/v7/widget/bc;->b:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/aq;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 562
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 560
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 562
    goto :goto_1

    .line 564
    :cond_1
    return-void
.end method
