.class public abstract Lcom/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/a;


# static fields
.field private static a:Lcom/c/a/a/e;

.field static final synthetic d:Z


# instance fields
.field protected b:Ljava/lang/String;

.field c:Z

.field private e:[B

.field private f:Lcom/b/a/a/b;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/c/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/c/a/a;->d:Z

    .line 47
    const-class v0, Lcom/c/a/a;

    invoke-static {v0}, Lcom/c/a/a/e;->a(Ljava/lang/Class;)Lcom/c/a/a/e;

    move-result-object v0

    sput-object v0, Lcom/c/a/a;->a:Lcom/c/a/a/e;

    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    .line 67
    iput-object p1, p0, Lcom/c/a/a;->b:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a;->c:Z

    .line 69
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    .line 72
    iput-object p1, p0, Lcom/c/a/a;->b:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/c/a/a;->e:[B

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a;->c:Z

    .line 75
    return-void
.end method

.method private b()Z
    .locals 10

    .prologue
    const-wide v8, 0x100000000L

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    const/16 v0, 0x8

    .line 252
    const-string v3, "uuid"

    invoke-virtual {p0}, Lcom/c/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    const/16 v0, 0x18

    .line 255
    :cond_0
    iget-boolean v3, p0, Lcom/c/a/a;->c:Z

    if-eqz v3, :cond_3

    .line 256
    invoke-virtual {p0}, Lcom/c/a/a;->d()J

    move-result-wide v4

    iget-object v3, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    :goto_0
    int-to-long v6, v3

    add-long/2addr v4, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-gez v0, :cond_2

    move v0, v1

    .line 258
    :goto_1
    return v0

    :cond_1
    move v3, v2

    .line 256
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 258
    :cond_3
    iget-object v3, p0, Lcom/c/a/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v0, v3

    int-to-long v4, v0

    cmp-long v0, v4, v8

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private c(Ljava/nio/ByteBuffer;)Z
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x4

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/c/a/a;->d()J

    move-result-wide v4

    iget-object v0, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    :goto_0
    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/c/a/a/b;->a(J)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 215
    invoke-virtual {p0, v4}, Lcom/c/a/a;->b(Ljava/nio/ByteBuffer;)V

    .line 216
    iget-object v0, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 218
    :goto_1
    iget-object v0, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_2

    .line 222
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 223
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 226
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 227
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/c/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": remaining differs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/c/a/a;->a:Lcom/c/a/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/c/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": remaining differs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/a/a/e;->b(Ljava/lang/String;)V

    .line 246
    :goto_2
    return v1

    :cond_1
    move v0, v1

    .line 214
    goto/16 :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 231
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 232
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ge v3, v5, :cond_4

    move v1, v2

    .line 246
    goto :goto_2

    .line 233
    :cond_4
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    .line 234
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    .line 235
    if-eq v6, v7, :cond_5

    .line 236
    sget-object v0, Lcom/c/a/a;->a:Lcom/c/a/a/e;

    const-string v5, "%s: buffers differ at %d: %2X/%2X"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/c/a/a;->f()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/a/a/e;->b(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 238
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 239
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 241
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "original      : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v10}, Lcom/b/a/b;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reconstructed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v10}, Lcom/b/a/b;->a([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 232
    :cond_5
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method private d(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/c/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/c/a/a;->a()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;J)V

    .line 265
    invoke-virtual {p0}, Lcom/c/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 271
    :goto_0
    const-string v0, "uuid"

    invoke-virtual {p0}, Lcom/c/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/c/a/a;->g()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 274
    :cond_0
    return-void

    .line 267
    :cond_1
    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;J)V

    .line 268
    invoke-virtual {p0}, Lcom/c/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 269
    invoke-virtual {p0}, Lcom/c/a/a;->a()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;J)V

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-boolean v0, p0, Lcom/c/a/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/c/a/a;->d()J

    move-result-wide v2

    .line 171
    :goto_0
    const-wide v4, 0xfffffff8L

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    const/16 v0, 0x8

    .line 170
    :goto_1
    add-int/lit8 v4, v0, 0x8

    .line 172
    const-string v0, "uuid"

    invoke-virtual {p0}, Lcom/c/a/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    :goto_2
    add-int/2addr v0, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 173
    iget-object v0, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_4

    :goto_3
    int-to-long v0, v1

    add-long/2addr v0, v2

    .line 174
    return-wide v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/c/a/a;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    :goto_4
    int-to-long v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_4

    :cond_2
    move v0, v1

    .line 171
    goto :goto_1

    :cond_3
    move v0, v1

    .line 172
    goto :goto_2

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    goto :goto_3
.end method

.method public a(Lcom/b/a/a/b;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/c/a/a;->f:Lcom/b/a/a/b;

    .line 195
    return-void
.end method

.method protected abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 5

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/c/a/a;->c:Z

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/c/a/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/c/a/a/b;->a(J)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/c/a/a;->d(Ljava/nio/ByteBuffer;)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/c/a/a;->b(Ljava/nio/ByteBuffer;)V

    .line 125
    iget-object v1, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_1

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 140
    :goto_1
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/c/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_2
    const-string v3, "uuid"

    invoke-virtual {p0}, Lcom/c/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lcom/c/a/a;->d(Ljava/nio/ByteBuffer;)V

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 136
    iget-object v0, p0, Lcom/c/a/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 133
    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method protected abstract b(Ljava/nio/ByteBuffer;)V
.end method

.method protected abstract d()J
.end method

.method public final declared-synchronized e()V
    .locals 3

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/c/a/a;->a:Lcom/c/a/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parsing details of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/c/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/a/a/e;->a(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/c/a/a;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/c/a/a;->g:Ljava/nio/ByteBuffer;

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/c/a/a;->c:Z

    .line 152
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 153
    invoke-virtual {p0, v0}, Lcom/c/a/a;->a(Ljava/nio/ByteBuffer;)V

    .line 154
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/c/a/a;->h:Ljava/nio/ByteBuffer;

    .line 157
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/c/a/a;->g:Ljava/nio/ByteBuffer;

    .line 158
    sget-boolean v1, Lcom/c/a/a;->d:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/c/a/a;->c(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/c/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()[B
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/c/a/a;->e:[B

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/c/a/a;->c:Z

    return v0
.end method
