.class public Landroid/support/design/a/f;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/widget/ImageView;",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Landroid/graphics/Matrix;

    const-string v1, "imageMatrixProperty"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/design/a/f;->a:Landroid/graphics/Matrix;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/design/a/f;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 41
    iget-object v0, p0, Landroid/support/design/a/f;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 36
    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/support/design/a/f;->a(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/a/f;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    return-void
.end method
