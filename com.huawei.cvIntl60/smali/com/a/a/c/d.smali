.class public Lcom/a/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(FIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/a/a/c/d;->a:F

    .line 5
    iput v1, p0, Lcom/a/a/c/d;->b:I

    .line 6
    iput v1, p0, Lcom/a/a/c/d;->c:I

    .line 7
    iput v1, p0, Lcom/a/a/c/d;->d:I

    .line 8
    iput v1, p0, Lcom/a/a/c/d;->e:I

    .line 18
    iput p1, p0, Lcom/a/a/c/d;->a:F

    .line 19
    iput p2, p0, Lcom/a/a/c/d;->b:I

    .line 20
    iput p3, p0, Lcom/a/a/c/d;->c:I

    .line 21
    iput p4, p0, Lcom/a/a/c/d;->d:I

    .line 22
    iput p5, p0, Lcom/a/a/c/d;->e:I

    .line 24
    return-void
.end method
