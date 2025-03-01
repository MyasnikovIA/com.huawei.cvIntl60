.class Landroid/support/v7/widget/StaggeredGridLayoutManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:Z

.field f:[I

.field final synthetic g:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .prologue
    .line 3266
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3267
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 3268
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3271
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 3272
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 3273
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 3274
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 3275
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->e:Z

    .line 3276
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    if-eqz v0, :cond_0

    .line 3277
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3279
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 3298
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    .line 3299
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->d()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 3303
    :goto_0
    return-void

    .line 3301
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0
.end method

.method a([Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)V
    .locals 5

    .prologue
    .line 3282
    array-length v1, p1

    .line 3283
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    array-length v0, v0

    if-ge v0, v1, :cond_1

    .line 3284
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    .line 3286
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 3288
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->f:[I

    aget-object v3, p1, v0

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v3

    aput v3, v2, v0

    .line 3286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3290
    :cond_2
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 3293
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->d()I

    move-result v0

    .line 3294
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 3295
    return-void

    .line 3293
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 3294
    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    goto :goto_0
.end method
