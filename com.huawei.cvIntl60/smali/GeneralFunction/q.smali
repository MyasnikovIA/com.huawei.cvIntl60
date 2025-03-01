.class public LGeneralFunction/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/q$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    .line 19
    iput-object v0, p0, LGeneralFunction/q;->b:Ljava/lang/String;

    .line 20
    iput-object v0, p0, LGeneralFunction/q;->c:Ljava/lang/String;

    .line 21
    iput-object v0, p0, LGeneralFunction/q;->d:Ljava/lang/String;

    .line 23
    const/4 v0, 0x7

    iput v0, p0, LGeneralFunction/q;->e:I

    .line 39
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 289
    .line 290
    sparse-switch p1, :sswitch_data_0

    .line 308
    :goto_0
    :sswitch_0
    return v0

    .line 296
    :sswitch_1
    const/4 v0, 0x6

    .line 297
    goto :goto_0

    .line 299
    :sswitch_2
    const/4 v0, 0x3

    .line 300
    goto :goto_0

    .line 302
    :sswitch_3
    const/16 v0, 0x8

    .line 303
    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        -0x5a -> :sswitch_3
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    .line 34
    const-string v0, "XMPReader"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "szPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v0, v1}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 163
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 173
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    .line 174
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v6, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 175
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    const-string v6, "ffe1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 180
    const-string v0, "not ffe1, break"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 181
    new-instance v0, LGeneralFunction/q$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, LGeneralFunction/q$a;-><init>(LGeneralFunction/q;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch LGeneralFunction/q$a; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :catch_0
    move-exception v0

    .line 253
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_a

    .line 271
    :try_start_2
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move v1, v2

    move v0, v3

    .line 277
    :goto_0
    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0, v1}, LGeneralFunction/q;->a(I)I

    move-result v0

    .line 283
    :cond_0
    return v0

    .line 184
    :cond_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmp1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v6, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v0, v6}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tmp2:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v0, v1}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tmp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v0, v1}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 188
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmp1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v6, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v1, v6}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tmp2:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v0, v1}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tmp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v0, v1}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 204
    const/16 v0, 0x10

    invoke-static {v5, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v5, v6}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 207
    const-wide/16 v6, 0x4

    add-long/2addr v0, v6

    .line 208
    iget-object v5, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v5, v0, v6

    if-lez v5, :cond_4

    .line 210
    const-string v0, "size > pFile size, break"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 211
    new-instance v0, LGeneralFunction/q$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, LGeneralFunction/q$a;-><init>(LGeneralFunction/q;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch LGeneralFunction/q$a; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    :catch_1
    move-exception v0

    .line 258
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 267
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_a

    .line 271
    :try_start_5
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move v1, v2

    move v0, v3

    .line 274
    goto/16 :goto_0

    .line 214
    :cond_4
    :try_start_6
    iget-object v5, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 216
    iget-object v5, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 217
    iget-object v6, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 219
    const-string v8, "ffe1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 221
    const-string v0, "not ffe1, break"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 222
    new-instance v0, LGeneralFunction/q$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, LGeneralFunction/q$a;-><init>(LGeneralFunction/q;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch LGeneralFunction/q$a; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 261
    :catch_2
    move-exception v0

    .line 267
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_a

    .line 271
    :try_start_7
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    move v1, v2

    move v0, v3

    .line 274
    goto/16 :goto_0

    .line 225
    :cond_5
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tmp1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v8, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v5, v8}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tmp2:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v5, v6}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tmp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v5, v6}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 229
    array-length v5, v4

    int-to-long v6, v5

    add-long/2addr v0, v6

    iget-object v5, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-lez v0, :cond_7

    .line 231
    const-string v0, "size > pFile size, break"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 232
    new-instance v0, LGeneralFunction/q$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, LGeneralFunction/q$a;-><init>(LGeneralFunction/q;Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch LGeneralFunction/q$a; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 267
    :catchall_0
    move-exception v0

    iget-object v1, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_6

    .line 271
    :try_start_9
    iget-object v1, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 274
    :cond_6
    :goto_1
    throw v0

    .line 234
    :cond_7
    :try_start_a
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 235
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmp:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v1, v4}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PoseRollDegreesStart:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<GPano:PoseRollDegrees>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v1, v4}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PoseRollDegreesStart:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<GPano:PoseRollDegrees>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v1, v4}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PoseRollDegreesEnd:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</GPano:PoseRollDegrees>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v1, v4}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 242
    const-string v1, "<GPano:PoseRollDegrees>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_8

    const-string v1, "</GPano:PoseRollDegrees>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 243
    :cond_8
    new-instance v0, LGeneralFunction/q$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, LGeneralFunction/q$a;-><init>(LGeneralFunction/q;Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_9
    const-string v1, "<GPano:PoseRollDegrees>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v4, "<GPano:PoseRollDegrees>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    const-string v4, "</GPano:PoseRollDegrees>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/q;->c:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoseRollDegrees:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LGeneralFunction/q;->e:I

    invoke-direct {p0, v0, v1}, LGeneralFunction/q;->a(Ljava/lang/String;I)V

    .line 249
    iget-object v0, p0, LGeneralFunction/q;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1
    .catch LGeneralFunction/q$a; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v0

    float-to-int v1, v0

    .line 267
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_b

    .line 271
    :try_start_b
    iget-object v0, p0, LGeneralFunction/q;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move v0, v2

    .line 274
    goto/16 :goto_0

    .line 272
    :catch_3
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    .line 274
    goto/16 :goto_0

    .line 272
    :catch_4
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    move v0, v3

    .line 274
    goto/16 :goto_0

    .line 272
    :catch_5
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    move v0, v3

    .line 274
    goto/16 :goto_0

    .line 272
    :catch_6
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    move v0, v3

    .line 274
    goto/16 :goto_0

    .line 272
    :catch_7
    move-exception v1

    .line 273
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_a
    move v1, v2

    move v0, v3

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_0
.end method
