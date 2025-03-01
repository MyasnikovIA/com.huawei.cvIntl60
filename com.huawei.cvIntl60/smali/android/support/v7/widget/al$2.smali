.class Landroid/support/v7/widget/al$2;
.super Landroid/support/v7/widget/RecyclerView$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/al;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/al;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Landroid/support/v7/widget/al$2;->a:Landroid/support/v7/widget/al;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/al$2;->a:Landroid/support/v7/widget/al;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 134
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/al;->a(II)V

    .line 135
    return-void
.end method
