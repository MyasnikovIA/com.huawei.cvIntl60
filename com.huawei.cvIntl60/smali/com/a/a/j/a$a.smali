.class Lcom/a/a/j/a$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/j/a$a;->b:I

    .line 168
    iput-object p1, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    .line 169
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/a/a/j/a$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, -0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, -0x1

    .line 201
    :goto_0
    return v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/j/a$a;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/a/a/j/a$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 207
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset to unset mark position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/a/a/j/a$a;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 7

    .prologue
    .line 215
    iget-object v0, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const-wide/16 v0, -0x1

    .line 221
    :goto_0
    return-wide v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/j/a$a;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 220
    iget-object v2, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/a/a/j/a$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v4, v0

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method
