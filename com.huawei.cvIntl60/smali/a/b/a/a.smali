.class public La/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:B

.field private e:B

.field private f:B

.field private g:[B


# direct methods
.method public constructor <init>(IB)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0x55534243

    iput v0, p0, La/b/a/a;->a:I

    .line 28
    invoke-direct {p0}, La/b/a/a;->b()I

    move-result v0

    iput v0, p0, La/b/a/a;->b:I

    .line 29
    iput p1, p0, La/b/a/a;->c:I

    .line 30
    iput-byte p2, p0, La/b/a/a;->d:B

    .line 31
    const/4 v0, 0x0

    iput-byte v0, p0, La/b/a/a;->e:B

    .line 32
    const/16 v0, 0x10

    iput-byte v0, p0, La/b/a/a;->f:B

    .line 33
    return-void
.end method

.method public constructor <init>(IBI)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const v0, 0x55534243

    iput v0, p0, La/b/a/a;->a:I

    .line 38
    iput p3, p0, La/b/a/a;->b:I

    .line 39
    iput p1, p0, La/b/a/a;->c:I

    .line 40
    iput-byte p2, p0, La/b/a/a;->d:B

    .line 41
    const/4 v0, 0x0

    iput-byte v0, p0, La/b/a/a;->e:B

    .line 42
    const/16 v0, 0x10

    iput-byte v0, p0, La/b/a/a;->f:B

    .line 43
    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 67
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a([B)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, La/b/a/a;->g:[B

    .line 48
    return-void
.end method

.method public a()[B
    .locals 2

    .prologue
    .line 52
    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    iget v1, p0, La/b/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 54
    iget v1, p0, La/b/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    iget v1, p0, La/b/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    iget-byte v1, p0, La/b/a/a;->d:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 57
    iget-byte v1, p0, La/b/a/a;->e:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 58
    iget-byte v1, p0, La/b/a/a;->f:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 59
    iget-object v1, p0, La/b/a/a;->g:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
