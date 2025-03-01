.class public LGeneralFunction/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/p$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    sput v0, LGeneralFunction/p;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    .line 31
    const-string v0, "XMPEditor"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add GanoCroppedArea Tag - szPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, LGeneralFunction/p;->a:I

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 45
    const/16 v2, 0x400

    new-array v4, v2, [B

    .line 48
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    .line 49
    iget-object v2, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v6, 0x2

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 51
    iget-object v2, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 52
    iget-object v3, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    const-string v6, "ffe1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 55
    const-string v2, "not ffe1, break"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 56
    new-instance v2, LGeneralFunction/p$a;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, LGeneralFunction/p$a;-><init>(LGeneralFunction/p;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LGeneralFunction/p$a; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :catch_0
    move-exception v2

    .line 135
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add GanoCroppedArea Tag - lResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_9

    .line 147
    :try_start_2
    iget-object v0, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move v0, v1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmp1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, LGeneralFunction/p;->a:I

    invoke-direct {p0, v2, v6}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tmp2:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, LGeneralFunction/p;->a:I

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, LGeneralFunction/p;->a:I

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 63
    iget-object v2, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 64
    iget-object v2, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmp1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v6, LGeneralFunction/p;->a:I

    invoke-direct {p0, v3, v6}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tmp2:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, LGeneralFunction/p;->a:I

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, LGeneralFunction/p;->a:I

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 79
    const/16 v2, 0x10

    invoke-static {v5, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, LGeneralFunction/p;->a:I

    invoke-direct {p0, v5, v6}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 82
    const-wide/16 v6, 0x4

    add-long/2addr v2, v6

    .line 83
    iget-object v5, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-lez v5, :cond_4

    .line 85
    const-string v2, "size > pFile size, break"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 86
    new-instance v2, LGeneralFunction/p$a;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, LGeneralFunction/p$a;-><init>(LGeneralFunction/p;Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch LGeneralFunction/p$a; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :catch_1
    move-exception v2

    .line 139
    :try_start_4
    invoke-virtual {v2}, LGeneralFunction/p$a;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add GanoCroppedArea Tag - lResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_9

    .line 147
    :try_start_5
    iget-object v0, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move v0, v1

    .line 150
    goto/16 :goto_0

    .line 89
    :cond_4
    :try_start_6
    iget-object v5, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 91
    iget-object v5, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 92
    iget-object v6, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    .line 93
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

    .line 94
    const-string v8, "ffe1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 96
    const-string v2, "not ffe1, break"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 97
    new-instance v2, LGeneralFunction/p$a;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, LGeneralFunction/p$a;-><init>(LGeneralFunction/p;Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch LGeneralFunction/p$a; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 143
    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add GanoCroppedArea Tag - lResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_5

    .line 147
    :try_start_7
    iget-object v0, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 150
    :cond_5
    :goto_1
    throw v2

    .line 100
    :cond_6
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

    sget v8, LGeneralFunction/p;->a:I

    invoke-direct {p0, v5, v8}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tmp2:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, LGeneralFunction/p;->a:I

    invoke-direct {p0, v5, v6}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tmp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, LGeneralFunction/p;->a:I

    invoke-direct {p0, v5, v6}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 104
    array-length v5, v4

    int-to-long v6, v5

    add-long/2addr v2, v6

    iget-object v5, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_7

    .line 106
    const-string v2, "size > pFile size, break"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 107
    new-instance v2, LGeneralFunction/p$a;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, LGeneralFunction/p$a;-><init>(LGeneralFunction/p;Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_7
    iget-object v2, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ffe1EndIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 113
    iget-object v5, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 114
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 116
    const-string v4, "</rdf:Description>"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lFooterIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFilePointer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 120
    const-string v6, "</rdf:Description>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v1, :cond_8

    .line 121
    const-string v2, "Not found XmpFooter"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 122
    new-instance v2, LGeneralFunction/p$a;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, LGeneralFunction/p$a;-><init>(LGeneralFunction/p;Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_8
    const-string v5, "<GPano:CroppedAreaLeftPixels>0</GPano:CroppedAreaLeftPixels><GPano:CroppedAreaTopPixels>0</GPano:CroppedAreaTopPixels></rdf:Description>\n</rdf:RDF>\n</x:xmpmeta>\n \n<?xpacket end=\"w\"?>"

    .line 126
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 127
    iget-object v7, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    int-to-long v8, v4

    add-long/2addr v2, v8

    const-wide/16 v8, 0x2

    add-long/2addr v2, v8

    invoke-virtual {v7, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 129
    iget-object v2, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch LGeneralFunction/p$a; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add GanoCroppedArea Tag - lResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, LGeneralFunction/p;->a(Ljava/lang/String;I)V

    .line 145
    iget-object v1, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 147
    :try_start_9
    iget-object v1, p0, LGeneralFunction/p;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 148
    :catch_2
    move-exception v1

    .line 149
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 148
    :catch_3
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 150
    goto/16 :goto_0

    .line 148
    :catch_4
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 150
    goto/16 :goto_0

    .line 148
    :catch_5
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method
