.class public Lcom/c/a/b;
.super Lcom/c/a/d;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/a;


# instance fields
.field a:Lcom/b/a/a/b;

.field protected b:Ljava/lang/String;

.field protected c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/c/a/d;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/c/a/b;->b:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/c/a/b;->d()J

    move-result-wide v2

    .line 58
    iget-boolean v0, p0, Lcom/c/a/b;->c:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x8

    add-long/2addr v0, v2

    const-wide v4, 0x100000000L

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Lcom/b/a/a/b;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/c/a/b;->a:Lcom/b/a/a/b;

    .line 54
    return-void
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/c/a/b;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 88
    invoke-virtual {p0, p1}, Lcom/c/a/b;->b(Ljava/nio/channels/WritableByteChannel;)V

    .line 89
    return-void
.end method

.method protected b()Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 67
    iget-boolean v0, p0, Lcom/c/a/b;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/c/a/b;->a()J

    move-result-wide v0

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 68
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    aput-byte v4, v0, v5

    iget-object v1, p0, Lcom/c/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aget-byte v1, v1, v6

    aput-byte v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/c/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/c/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v7

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/c/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v5

    aput-byte v2, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    invoke-virtual {p0}, Lcom/c/a/b;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;J)V

    .line 75
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 76
    return-object v0

    .line 72
    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/c/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aget-byte v1, v1, v6

    aput-byte v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/c/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/c/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v7

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/c/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v5

    aput-byte v2, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/c/a/b;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_0
.end method
