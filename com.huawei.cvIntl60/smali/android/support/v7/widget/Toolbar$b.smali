.class public Landroid/support/v7/widget/Toolbar$b;
.super Landroid/support/v7/app/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 2220
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/a$a;-><init>(II)V

    .line 2213
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 2221
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->a:I

    .line 2222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2216
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/a$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2213
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 2217
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/a$a;)V
    .locals 1

    .prologue
    .line 2240
    invoke-direct {p0, p1}, Landroid/support/v7/app/a$a;-><init>(Landroid/support/v7/app/a$a;)V

    .line 2213
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 2241
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar$b;)V
    .locals 1

    .prologue
    .line 2234
    invoke-direct {p0, p1}, Landroid/support/v7/app/a$a;-><init>(Landroid/support/v7/app/a$a;)V

    .line 2213
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 2236
    iget v0, p1, Landroid/support/v7/widget/Toolbar$b;->b:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 2237
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 2251
    invoke-direct {p0, p1}, Landroid/support/v7/app/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2213
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 2252
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 2244
    invoke-direct {p0, p1}, Landroid/support/v7/app/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2213
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 2247
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar$b;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2248
    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 2255
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->leftMargin:I

    .line 2256
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    .line 2257
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->rightMargin:I

    .line 2258
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    .line 2259
    return-void
.end method
