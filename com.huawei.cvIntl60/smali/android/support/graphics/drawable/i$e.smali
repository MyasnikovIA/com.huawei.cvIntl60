.class abstract Landroid/support/graphics/drawable/i$e;
.super Landroid/support/graphics/drawable/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field protected m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1675
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/i$d;-><init>(Landroid/support/graphics/drawable/i$1;)V

    .line 1671
    iput-object v0, p0, Landroid/support/graphics/drawable/i$e;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1677
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/i$e;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1701
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/i$d;-><init>(Landroid/support/graphics/drawable/i$1;)V

    .line 1671
    iput-object v0, p0, Landroid/support/graphics/drawable/i$e;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1702
    iget-object v0, p1, Landroid/support/graphics/drawable/i$e;->n:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/i$e;->n:Ljava/lang/String;

    .line 1703
    iget v0, p1, Landroid/support/graphics/drawable/i$e;->o:I

    iput v0, p0, Landroid/support/graphics/drawable/i$e;->o:I

    .line 1704
    iget-object v0, p1, Landroid/support/graphics/drawable/i$e;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i$e;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1705
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    .prologue
    .line 1708
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1709
    iget-object v0, p0, Landroid/support/graphics/drawable/i$e;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Landroid/support/graphics/drawable/i$e;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/PathParser$PathDataNode;->nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 1712
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1726
    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Landroid/support/graphics/drawable/i$e;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Landroid/support/graphics/drawable/i$e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Landroid/support/graphics/drawable/i$e;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/PathParser;->canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1739
    invoke-static {p1}, Landroid/support/v4/graphics/PathParser;->deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/i$e;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1743
    :goto_0
    return-void

    .line 1741
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/i$e;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/PathParser;->updateNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)V

    goto :goto_0
.end method
