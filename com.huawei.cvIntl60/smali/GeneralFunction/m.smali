.class public LGeneralFunction/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, LGeneralFunction/m;->a:I

    .line 10
    iput v0, p0, LGeneralFunction/m;->b:I

    .line 11
    const/4 v0, 0x1

    iput v0, p0, LGeneralFunction/m;->c:I

    .line 12
    return-void
.end method
