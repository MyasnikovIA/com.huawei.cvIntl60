.class Landroid/support/v7/widget/ao$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/ao$a;->c:[I

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/ao$a;->c:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ao$a;->d:I

    .line 154
    return-void
.end method

.method a(II)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Landroid/support/v7/widget/ao$a;->a:I

    .line 73
    iput p2, p0, Landroid/support/v7/widget/ao$a;->b:I

    .line 74
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ao$a;->d:I

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/ao$a;->c:[I

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/ao$a;->c:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 82
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/RecyclerView$i;

    .line 83
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    if-eqz p2, :cond_3

    .line 89
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/d;

    invoke-virtual {v1}, Landroid/support/v7/widget/d;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/RecyclerView$i;->a(ILandroid/support/v7/widget/RecyclerView$i$a;)V

    .line 100
    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/ao$a;->d:I

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$i;->x:I

    if-le v1, v2, :cond_2

    .line 101
    iget v1, p0, Landroid/support/v7/widget/ao$a;->d:I

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$i;->x:I

    .line 102
    iput-boolean p2, v0, Landroid/support/v7/widget/RecyclerView$i;->y:Z

    .line 103
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$p;->b()V

    .line 106
    :cond_2
    return-void

    .line 94
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->v()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    iget v1, p0, Landroid/support/v7/widget/ao$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/ao$a;->b:I

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v7/widget/RecyclerView$i;->a(IILandroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$i$a;)V

    goto :goto_0
.end method

.method a(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Landroid/support/v7/widget/ao$a;->c:[I

    if-eqz v1, :cond_0

    .line 138
    iget v1, p0, Landroid/support/v7/widget/ao$a;->d:I

    mul-int/lit8 v2, v1, 0x2

    move v1, v0

    .line 139
    :goto_0
    if-ge v1, v2, :cond_0

    .line 140
    iget-object v3, p0, Landroid/support/v7/widget/ao$a;->c:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    .line 143
    :cond_0
    return v0

    .line 139
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public b(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    if-gez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Layout positions must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    if-gez p2, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pixel distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ao$a;->d:I

    mul-int/lit8 v0, v0, 0x2

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/ao$a;->c:[I

    if-nez v1, :cond_3

    .line 121
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v7/widget/ao$a;->c:[I

    .line 122
    iget-object v1, p0, Landroid/support/v7/widget/ao$a;->c:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 130
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/ao$a;->c:[I

    aput p1, v1, v0

    .line 131
    iget-object v1, p0, Landroid/support/v7/widget/ao$a;->c:[I

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    .line 133
    iget v0, p0, Landroid/support/v7/widget/ao$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/ao$a;->d:I

    .line 134
    return-void

    .line 123
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/ao$a;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 124
    iget-object v1, p0, Landroid/support/v7/widget/ao$a;->c:[I

    .line 125
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v7/widget/ao$a;->c:[I

    .line 126
    iget-object v2, p0, Landroid/support/v7/widget/ao$a;->c:[I

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
