.class public LGeneralFunction/t/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/File;

.field private b:LGeneralFunction/t/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/t/b;->a:Ljava/io/File;

    .line 15
    new-instance v0, LGeneralFunction/t/a;

    invoke-direct {v0}, LGeneralFunction/t/a;-><init>()V

    iput-object v0, p0, LGeneralFunction/t/b;->b:LGeneralFunction/t/a;

    .line 20
    return-void
.end method

.method private a([BII)I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 142
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private b([BII)J
    .locals 2

    .prologue
    .line 147
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 150
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LGeneralFunction/t/b;->a:Ljava/io/File;

    .line 25
    iget-object v0, p0, LGeneralFunction/t/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()LGeneralFunction/t/a;
    .locals 6

    .prologue
    .line 56
    iget-object v0, p0, LGeneralFunction/t/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 57
    iget-object v1, p0, LGeneralFunction/t/b;->b:LGeneralFunction/t/a;

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LGeneralFunction/t/b;->a(LGeneralFunction/t/a;JJ)V

    .line 58
    iget-object v0, p0, LGeneralFunction/t/b;->b:LGeneralFunction/t/a;

    return-object v0
.end method

.method public a(LGeneralFunction/t/a;JJ)V
    .locals 10

    .prologue
    const/16 v3, 0x8

    .line 95
    add-long v4, p2, p4

    .line 96
    const-string v0, "VideoParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dlOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dlLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    const/4 v2, 0x0

    .line 98
    new-array v0, v3, [B

    .line 101
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v3, p0, LGeneralFunction/t/b;->a:Ljava/io/File;

    const-string v6, "r"

    invoke-direct {v1, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_2

    .line 104
    :try_start_1
    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 105
    new-instance v2, LGeneralFunction/t/a;

    invoke-direct {v2}, LGeneralFunction/t/a;-><init>()V

    .line 106
    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v1, v0, v3, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 107
    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-direct {p0, v0, v3, v6}, LGeneralFunction/t/b;->a([BII)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v2, LGeneralFunction/t/a;->b:J

    .line 108
    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v1, v0, v3, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 109
    new-instance v3, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-direct {v3, v0, v6, v7}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, v2, LGeneralFunction/t/a;->c:Ljava/lang/String;

    .line 110
    const-wide/16 v6, 0x8

    add-long/2addr v6, p2

    iput-wide v6, v2, LGeneralFunction/t/a;->a:J

    .line 111
    iget-wide v6, v2, LGeneralFunction/t/a;->b:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 112
    const/4 v3, 0x1

    iput-boolean v3, v2, LGeneralFunction/t/a;->d:Z

    .line 113
    const/4 v3, 0x0

    const/16 v6, 0x8

    invoke-virtual {v1, v0, v3, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 114
    const/4 v3, 0x0

    const/16 v6, 0x8

    invoke-direct {p0, v0, v3, v6}, LGeneralFunction/t/b;->b([BII)J

    move-result-wide v6

    iput-wide v6, v2, LGeneralFunction/t/a;->b:J

    .line 115
    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    iput-wide v6, v2, LGeneralFunction/t/a;->a:J

    .line 117
    :cond_0
    iget-wide v6, v2, LGeneralFunction/t/a;->b:J

    add-long/2addr p2, v6

    .line 118
    iget-object v3, p1, LGeneralFunction/t/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    if-eqz v1, :cond_1

    .line 129
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 135
    :cond_1
    :goto_2
    return-void

    .line 126
    :cond_2
    if-eqz v1, :cond_1

    .line 129
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 130
    :catch_1
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 130
    :catch_2
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 123
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 124
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    if-eqz v1, :cond_1

    .line 129
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 130
    :catch_4
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 126
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_3

    .line 129
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 132
    :cond_3
    :goto_5
    throw v0

    .line 130
    :catch_5
    move-exception v1

    .line 131
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 126
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 123
    :catch_6
    move-exception v0

    goto :goto_3

    .line 121
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
