.class public LGeneralFunction/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:LGeneralFunction/j;

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v1, LGeneralFunction/j;

    invoke-direct {v1}, LGeneralFunction/j;-><init>()V

    iput-object v1, p0, LGeneralFunction/c/a;->a:LGeneralFunction/j;

    .line 15
    iput v0, p0, LGeneralFunction/c/a;->b:I

    .line 16
    const/4 v1, 0x0

    iput-object v1, p0, LGeneralFunction/c/a;->c:Ljava/util/ArrayList;

    .line 17
    iput v0, p0, LGeneralFunction/c/a;->d:I

    .line 27
    iput p1, p0, LGeneralFunction/c/a;->b:I

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LGeneralFunction/c/a;->c:Ljava/util/ArrayList;

    .line 29
    :goto_0
    if-ge v0, p1, :cond_0

    .line 31
    iget-object v1, p0, LGeneralFunction/c/a;->c:Ljava/util/ArrayList;

    new-instance v2, LGeneralFunction/c/d;

    new-array v3, p2, [B

    invoke-direct {v2, v3}, LGeneralFunction/c/d;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public a()LGeneralFunction/c/d;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, LGeneralFunction/c/a;->a:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 47
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, LGeneralFunction/c/a;->b:I

    if-ge v1, v0, :cond_2

    .line 49
    iget v0, p0, LGeneralFunction/c/a;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 50
    iget v3, p0, LGeneralFunction/c/a;->b:I

    rem-int v3, v0, v3

    .line 51
    iget-object v0, p0, LGeneralFunction/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/c/d;

    invoke-virtual {v0}, LGeneralFunction/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, LGeneralFunction/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/c/d;

    .line 54
    invoke-virtual {v0}, LGeneralFunction/c/d;->c()V

    .line 55
    iput v3, p0, LGeneralFunction/c/a;->d:I

    .line 59
    :goto_1
    iget-object v3, p0, LGeneralFunction/c/a;->a:LGeneralFunction/j;

    invoke-virtual {v3}, LGeneralFunction/j;->b()V

    .line 60
    iget v3, p0, LGeneralFunction/c/a;->b:I

    if-ne v1, v3, :cond_1

    .line 66
    :goto_2
    return-object v2

    .line 47
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 66
    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 72
    .line 73
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, LGeneralFunction/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 75
    iget-object v0, p0, LGeneralFunction/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/c/d;

    invoke-virtual {v0}, LGeneralFunction/c/d;->e()V

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, LGeneralFunction/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/c/a;->c:Ljava/util/ArrayList;

    .line 79
    return-void
.end method
