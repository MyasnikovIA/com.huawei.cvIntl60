.class Landroid/support/design/widget/r;
.super Landroid/support/design/widget/CoordinatorLayout$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/design/widget/s;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    .line 29
    iput v0, p0, Landroid/support/design/widget/r;->b:I

    .line 30
    iput v0, p0, Landroid/support/design/widget/r;->c:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Landroid/support/design/widget/r;->b:I

    .line 30
    iput v0, p0, Landroid/support/design/widget/r;->c:I

    .line 36
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/s;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/s;->a(I)Z

    move-result v0

    .line 71
    :goto_0
    return v0

    .line 69
    :cond_0
    iput p1, p0, Landroid/support/design/widget/r;->b:I

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/r;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 43
    iget-object v0, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/s;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/support/design/widget/s;

    invoke-direct {v0, p2}, Landroid/support/design/widget/s;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/s;

    .line 46
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/s;

    invoke-virtual {v0}, Landroid/support/design/widget/s;->a()V

    .line 48
    iget v0, p0, Landroid/support/design/widget/r;->b:I

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/s;

    iget v1, p0, Landroid/support/design/widget/r;->b:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/s;->a(I)Z

    .line 50
    iput v2, p0, Landroid/support/design/widget/r;->b:I

    .line 52
    :cond_1
    iget v0, p0, Landroid/support/design/widget/r;->c:I

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/s;

    iget v1, p0, Landroid/support/design/widget/r;->c:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/s;->b(I)Z

    .line 54
    iput v2, p0, Landroid/support/design/widget/r;->c:I

    .line 57
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/s;

    invoke-virtual {v0}, Landroid/support/design/widget/s;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 63
    return-void
.end method
