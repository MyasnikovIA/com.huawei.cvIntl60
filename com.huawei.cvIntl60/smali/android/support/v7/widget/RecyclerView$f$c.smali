.class public Landroid/support/v7/widget/RecyclerView$f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13181
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$w;)Landroid/support/v7/widget/RecyclerView$f$c;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 13192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$f$c;->a(Landroid/support/v7/widget/RecyclerView$w;I)Landroid/support/v7/widget/RecyclerView$f$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;I)Landroid/support/v7/widget/RecyclerView$f$c;
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 13208
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    .line 13209
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$f$c;->a:I

    .line 13210
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$f$c;->b:I

    .line 13211
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$f$c;->c:I

    .line 13212
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$f$c;->d:I

    .line 13213
    return-object p0
.end method
