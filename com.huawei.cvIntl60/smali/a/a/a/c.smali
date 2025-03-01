.class public La/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, La/a/a/c;->a:[B

    .line 10
    iput v1, p0, La/a/a/c;->b:I

    .line 11
    iput v1, p0, La/a/a/c;->c:I

    .line 12
    iput v1, p0, La/a/a/c;->d:I

    .line 13
    iput v1, p0, La/a/a/c;->e:I

    .line 14
    const v0, 0xfc00

    new-array v0, v0, [B

    iput-object v0, p0, La/a/a/c;->f:[B

    .line 16
    return-void
.end method
