.class public final Lcom/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(B)I
    .locals 0

    .prologue
    .line 72
    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)J
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    .line 39
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 40
    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    .line 42
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    new-array v0, p1, [B

    .line 95
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 96
    invoke-static {v0}, Lcom/b/a/f;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p0}, Lcom/b/a/d;->c(Ljava/nio/ByteBuffer;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/b/a/d;->a(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    return v0
.end method

.method public static c(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/b/a/d;->a(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/b/a/d;->a(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    return v0
.end method

.method public static d(Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/d;->a(B)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 161
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 164
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
