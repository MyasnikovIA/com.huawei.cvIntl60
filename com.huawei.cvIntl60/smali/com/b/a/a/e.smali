.class public Lcom/b/a/a/e;
.super Lcom/c/a/b;
.source "SourceFile"


# instance fields
.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "meta"

    invoke-direct {p0, v0}, Lcom/c/a/b;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/e;->j:Z

    .line 47
    return-void
.end method


# virtual methods
.method public a()J
    .locals 7

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/b/a/a/e;->d()J

    move-result-wide v2

    .line 113
    const-wide/16 v0, 0x0

    .line 114
    iget-boolean v4, p0, Lcom/b/a/a/e;->j:Z

    if-eqz v4, :cond_0

    .line 115
    const-wide/16 v4, 0x4

    add-long/2addr v0, v4

    .line 117
    :cond_0
    add-long v4, v2, v0

    iget-boolean v6, p0, Lcom/b/a/a/e;->c:Z

    if-nez v6, :cond_1

    add-long/2addr v0, v2

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    const/16 v0, 0x10

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v4

    return-wide v0

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/b/a/a/e;->k:I

    invoke-static {p1, v0}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;I)V

    .line 79
    iget v0, p0, Lcom/b/a/a/e;->l:I

    invoke-static {p1, v0}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;I)V

    .line 80
    return-void
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/b/a/a/e;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 103
    iget-boolean v0, p0, Lcom/b/a/a/e;->j:Z

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/b/a/a/e;->a(Ljava/nio/ByteBuffer;)V

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/b/a/a/e;->b(Ljava/nio/channels/WritableByteChannel;)V

    .line 109
    return-void
.end method
