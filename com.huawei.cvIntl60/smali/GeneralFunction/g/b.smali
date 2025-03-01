.class public LGeneralFunction/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 24
    .line 26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_0
    new-instance v7, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    move-object v1, v2

    .line 37
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "../"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 41
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, ".."

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 42
    :cond_1
    const-string v2, "FileCompress"

    const-string v3, "location.contains(\"..\""

    const/4 v5, 0x3

    invoke-static {v2, v3, v5}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :goto_1
    if-eqz v0, :cond_2

    .line 82
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 89
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 95
    :cond_3
    :goto_3
    return v4

    .line 77
    :catch_0
    move-exception v2

    .line 78
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 90
    :catch_2
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 47
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 48
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_5

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5
    move-object v2, v1

    :goto_4
    move-object v1, v2

    .line 66
    goto :goto_0

    .line 53
    :cond_6
    const/16 v2, 0x400

    new-array v6, v2, [B

    .line 54
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-direct {v2, v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 55
    :try_start_5
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x400

    invoke-direct {v1, v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 58
    :goto_5
    const/4 v0, 0x0

    const/16 v5, 0x400

    :try_start_6
    invoke-virtual {v7, v6, v0, v5}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 59
    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 69
    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v5, v1

    move-object v6, v2

    .line 70
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 75
    :try_start_8
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 80
    :goto_7
    if-eqz v5, :cond_7

    .line 82
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 87
    :cond_7
    :goto_8
    if-eqz v6, :cond_d

    .line 89
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    move v0, v4

    :goto_9
    move v4, v0

    .line 95
    goto :goto_3

    .line 61
    :cond_8
    :try_start_b
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 62
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 63
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v0, v1

    goto :goto_4

    .line 75
    :cond_9
    :try_start_c
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 80
    :goto_a
    if-eqz v0, :cond_a

    .line 82
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 87
    :cond_a
    :goto_b
    if-eqz v1, :cond_e

    .line 89
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    move v0, v3

    .line 92
    goto :goto_9

    .line 77
    :catch_4
    move-exception v2

    .line 78
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 83
    :catch_5
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 90
    :catch_6
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v3

    .line 92
    goto :goto_9

    .line 77
    :catch_7
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 83
    :catch_8
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 90
    :catch_9
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v4

    .line 92
    goto :goto_9

    .line 74
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v5, v1

    move-object v6, v2

    .line 75
    :goto_c
    :try_start_f
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 80
    :goto_d
    if-eqz v5, :cond_b

    .line 82
    :try_start_10
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 87
    :cond_b
    :goto_e
    if-eqz v6, :cond_c

    .line 89
    :try_start_11
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 92
    :cond_c
    :goto_f
    throw v3

    .line 77
    :catch_a
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 83
    :catch_b
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 90
    :catch_c
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 74
    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v5, v0

    move-object v6, v1

    goto :goto_c

    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v5, v0

    move-object v6, v2

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v3, v0

    goto :goto_c

    .line 69
    :catch_d
    move-exception v2

    move-object v3, v2

    move-object v5, v0

    move-object v6, v1

    goto :goto_6

    :catch_e
    move-exception v1

    move-object v3, v1

    move-object v5, v0

    move-object v6, v2

    goto/16 :goto_6

    :cond_d
    move v0, v4

    goto :goto_9

    :cond_e
    move v0, v3

    goto :goto_9
.end method
