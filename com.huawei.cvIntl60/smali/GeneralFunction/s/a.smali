.class public LGeneralFunction/s/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/s/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 49
    const-string v0, "MetaDataTool"

    invoke-static {v0, p0, p1}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 10

    .prologue
    const-wide/16 v8, 0x8

    const/4 v0, 0x0

    .line 410
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    new-instance v2, LGeneralFunction/t/b;

    invoke-direct {v2}, LGeneralFunction/t/b;-><init>()V

    .line 412
    invoke-virtual {v2, p1}, LGeneralFunction/t/b;->a(Ljava/lang/String;)I

    .line 413
    invoke-virtual {v2}, LGeneralFunction/t/b;->a()LGeneralFunction/t/a;

    move-result-object v2

    .line 414
    const-string v3, "moov"

    invoke-virtual {v2, v3}, LGeneralFunction/t/a;->a(Ljava/lang/String;)LGeneralFunction/t/a;

    move-result-object v2

    .line 415
    iget-wide v4, v2, LGeneralFunction/t/a;->a:J

    sub-long/2addr v4, v8

    iget-wide v6, v2, LGeneralFunction/t/a;->b:J

    add-long/2addr v4, v6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Move moov: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, LGeneralFunction/t/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, LGeneralFunction/s/a;->a(Ljava/lang/String;I)V

    .line 421
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :try_start_1
    iget-wide v4, v2, LGeneralFunction/t/a;->a:J

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 429
    iget-wide v4, v2, LGeneralFunction/t/a;->b:J

    long-to-int v4, v4

    new-array v4, v4, [B

    .line 430
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 431
    iget-wide v6, v2, LGeneralFunction/t/a;->a:J

    const-wide/16 v8, 0x4

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 432
    const-string v2, "free"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v2, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 433
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 434
    const/4 v1, 0x0

    array-length v2, v4

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    if-eqz v3, :cond_0

    .line 443
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 424
    const/4 v0, -0x1

    goto :goto_0

    .line 444
    :catch_1
    move-exception v1

    .line 445
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 436
    :catch_2
    move-exception v0

    .line 437
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 438
    const/4 v0, -0x2

    .line 440
    if-eqz v3, :cond_0

    .line 443
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 444
    :catch_3
    move-exception v1

    .line 445
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    .line 443
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 446
    :cond_1
    :goto_1
    throw v0

    .line 444
    :catch_4
    move-exception v1

    .line 445
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 459
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    new-instance v0, LGeneralFunction/t/b;

    invoke-direct {v0}, LGeneralFunction/t/b;-><init>()V

    .line 461
    invoke-virtual {v0, p1}, LGeneralFunction/t/b;->a(Ljava/lang/String;)I

    .line 462
    invoke-virtual {v0}, LGeneralFunction/t/b;->a()LGeneralFunction/t/a;

    move-result-object v1

    .line 463
    const-string v2, "moov"

    invoke-virtual {v1, v2}, LGeneralFunction/t/a;->a(Ljava/lang/String;)LGeneralFunction/t/a;

    move-result-object v1

    .line 464
    iget-wide v2, v1, LGeneralFunction/t/a;->a:J

    iget-wide v4, v1, LGeneralFunction/t/a;->b:J

    const-wide/16 v8, 0x8

    sub-long/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, LGeneralFunction/t/b;->a(LGeneralFunction/t/a;JJ)V

    .line 465
    const-string v0, "udta"

    invoke-virtual {v1, v0}, LGeneralFunction/t/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 470
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 477
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/t/a;

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set udta to free: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, LGeneralFunction/t/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, LGeneralFunction/s/a;->a(Ljava/lang/String;I)V

    .line 479
    iget-wide v4, v0, LGeneralFunction/t/a;->a:J

    const-wide/16 v8, 0x4

    sub-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 480
    const-string v0, "free"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 485
    const/4 v0, -0x2

    .line 487
    if-eqz v1, :cond_0

    .line 490
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 500
    :cond_0
    :goto_1
    return v0

    .line 471
    :catch_1
    move-exception v0

    .line 472
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 473
    const/4 v0, -0x1

    goto :goto_1

    .line 487
    :cond_1
    if-eqz v1, :cond_2

    .line 490
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move v0, v6

    .line 496
    goto :goto_1

    .line 491
    :catch_2
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 491
    :catch_3
    move-exception v1

    .line 492
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 487
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 490
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 493
    :cond_3
    :goto_3
    throw v0

    .line 491
    :catch_4
    move-exception v1

    .line 492
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_4
    move v0, v6

    .line 500
    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;LGeneralFunction/s/b;)I
    .locals 24

    .prologue
    .line 252
    invoke-direct/range {p0 .. p1}, LGeneralFunction/s/a;->b(Ljava/lang/String;)I

    move-result v2

    .line 253
    if-gez v2, :cond_1

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Move error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, LGeneralFunction/s/a;->a(Ljava/lang/String;I)V

    .line 256
    const/4 v2, -0x4

    .line 405
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    invoke-direct/range {p0 .. p1}, LGeneralFunction/s/a;->c(Ljava/lang/String;)I

    move-result v2

    .line 260
    if-gez v2, :cond_2

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, LGeneralFunction/s/a;->a(Ljava/lang/String;I)V

    .line 263
    const/4 v2, -0x4

    goto :goto_0

    .line 266
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<APP_VER>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, LGeneralFunction/s/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</APP_VER>\n<CAMERA_VER>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, LGeneralFunction/s/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CAMERA_VER>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    const-string v3, "<?xml version=\"1.0\"?><rdf:SphericalVideo\nxmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\nxmlns:GSpherical=\"http://ns.google.com/videos/1.0/spherical/\"><GSpherical:Spherical>true</GSpherical:Spherical><GSpherical:Stitched>true</GSpherical:Stitched><GSpherical:StitchingSoftware>Spherical Metadata Tool</GSpherical:StitchingSoftware><GSpherical:ProjectionType>equirectangular</GSpherical:ProjectionType></rdf:SphericalVideo>"

    .line 277
    const-string v4, "ffcc8263-f855-4a93-8814-587a02521fdd"

    .line 279
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    new-instance v5, Lcom/b/a/a/g;

    invoke-direct {v5}, Lcom/b/a/a/g;-><init>()V

    .line 283
    new-instance v6, Lcom/b/a/a/e;

    invoke-direct {v6}, Lcom/b/a/a/e;-><init>()V

    .line 284
    new-instance v7, Lcom/b/a/a/h;

    invoke-direct {v7}, Lcom/b/a/a/h;-><init>()V

    .line 285
    invoke-virtual {v7, v2}, Lcom/b/a/a/h;->a(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v6, v7}, Lcom/b/a/a/e;->a(Lcom/b/a/a/a;)V

    .line 287
    invoke-virtual {v5, v6}, Lcom/b/a/a/g;->a(Lcom/b/a/a/a;)V

    .line 289
    invoke-virtual {v5}, Lcom/b/a/a/g;->a()J

    move-result-wide v6

    long-to-int v14, v6

    .line 292
    const-wide/16 v6, 0x0

    add-int/lit8 v2, v14, -0x8

    int-to-long v8, v2

    :try_start_0
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/b/a/a/g;->a(JJ)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    .line 300
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 301
    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 302
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 304
    new-instance v2, Lcom/b/a/a/f;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/b/a/a/f;-><init>([B)V

    .line 305
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/b/a/a/f;->a([B)V

    .line 306
    invoke-virtual {v2}, Lcom/b/a/a/f;->a()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v16, v0

    .line 307
    invoke-virtual {v2}, Lcom/b/a/a/f;->g()[B

    move-result-object v17

    .line 308
    invoke-virtual {v2}, Lcom/b/a/a/f;->b()[B

    move-result-object v18

    .line 314
    :try_start_1
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    new-instance v2, LGeneralFunction/t/b;

    invoke-direct {v2}, LGeneralFunction/t/b;-><init>()V

    .line 323
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, LGeneralFunction/t/b;->a(Ljava/lang/String;)I

    .line 324
    invoke-virtual {v2}, LGeneralFunction/t/b;->a()LGeneralFunction/t/a;

    move-result-object v3

    .line 325
    const-string v4, "moov"

    invoke-virtual {v3, v4}, LGeneralFunction/t/a;->a(Ljava/lang/String;)LGeneralFunction/t/a;

    move-result-object v3

    .line 326
    iget-wide v4, v3, LGeneralFunction/t/a;->b:J

    long-to-int v4, v4

    add-int/2addr v4, v14

    add-int v20, v4, v16

    .line 328
    iget-wide v4, v3, LGeneralFunction/t/a;->a:J

    iget-wide v6, v3, LGeneralFunction/t/a;->b:J

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    invoke-virtual/range {v2 .. v7}, LGeneralFunction/t/b;->a(LGeneralFunction/t/a;JJ)V

    .line 329
    const-string v4, "trak"

    invoke-virtual {v3, v4}, LGeneralFunction/t/a;->a(Ljava/lang/String;)LGeneralFunction/t/a;

    move-result-object v12

    .line 330
    const-string v4, "trak"

    invoke-virtual {v3, v4}, LGeneralFunction/t/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 332
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LGeneralFunction/t/a;

    .line 333
    iget-wide v6, v5, LGeneralFunction/t/a;->a:J

    iget-wide v8, v5, LGeneralFunction/t/a;->b:J

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, LGeneralFunction/t/b;->a(LGeneralFunction/t/a;JJ)V

    .line 334
    const-string v4, "mdia"

    invoke-virtual {v5, v4}, LGeneralFunction/t/a;->a(Ljava/lang/String;)LGeneralFunction/t/a;

    move-result-object v7

    .line 335
    iget-wide v8, v7, LGeneralFunction/t/a;->a:J

    iget-wide v10, v7, LGeneralFunction/t/a;->b:J

    const-wide/16 v22, 0x8

    sub-long v10, v10, v22

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, LGeneralFunction/t/b;->a(LGeneralFunction/t/a;JJ)V

    .line 336
    const-string v4, "hdlr"

    invoke-virtual {v7, v4}, LGeneralFunction/t/a;->a(Ljava/lang/String;)LGeneralFunction/t/a;

    move-result-object v4

    .line 338
    :try_start_2
    iget-wide v6, v4, LGeneralFunction/t/a;->a:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 339
    iget-wide v6, v4, LGeneralFunction/t/a;->b:J

    long-to-int v4, v6

    add-int/lit8 v4, v4, -0x8

    new-array v4, v4, [B

    .line 340
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 341
    new-instance v6, Lcom/b/a/a/d;

    invoke-direct {v6}, Lcom/b/a/a/d;-><init>()V

    .line 342
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/b/a/a/d;->a(Ljava/nio/ByteBuffer;)V

    .line 343
    invoke-virtual {v6}, Lcom/b/a/a/d;->b()Ljava/lang/String;

    move-result-object v4

    const-string v6, "vide"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 344
    const-string v4, "vide trak found"

    const/4 v6, 0x3

    invoke-static {v4, v6}, LGeneralFunction/s/a;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 352
    :goto_2
    iget-wide v6, v5, LGeneralFunction/t/a;->b:J

    long-to-int v2, v6

    add-int v2, v2, v16

    .line 355
    const-string v4, "udta"

    invoke-virtual {v3, v4}, LGeneralFunction/t/a;->a(Ljava/lang/String;)LGeneralFunction/t/a;

    move-result-object v4

    .line 356
    if-eqz v4, :cond_4

    .line 357
    const-string v4, "udta still exist!"

    const/4 v6, 0x3

    invoke-static {v4, v6}, LGeneralFunction/s/a;->a(Ljava/lang/String;I)V

    .line 360
    :cond_4
    iget-wide v6, v5, LGeneralFunction/t/a;->a:J

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    iget-wide v8, v5, LGeneralFunction/t/a;->b:J

    add-long/2addr v6, v8

    .line 365
    :try_start_3
    iget-wide v8, v3, LGeneralFunction/t/a;->a:J

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 366
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 368
    iget-wide v4, v5, LGeneralFunction/t/a;->a:J

    const-wide/16 v8, 0x8

    sub-long/2addr v4, v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 369
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 371
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 372
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v2, v6

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 373
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 375
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 377
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 378
    const-string v3, "uuid"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 379
    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 380
    const/4 v3, 0x0

    move-object/from16 v0, v18

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 383
    const/4 v3, 0x0

    array-length v4, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 387
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 389
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 390
    const-string v2, "udta"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 391
    const/4 v2, 0x0

    array-length v3, v15

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    if-eqz v19, :cond_5

    .line 399
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 405
    :cond_5
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 293
    :catch_0
    move-exception v2

    .line 294
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 295
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 315
    :catch_1
    move-exception v2

    .line 316
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 317
    const/4 v2, -0x2

    goto/16 :goto_0

    .line 348
    :catch_2
    move-exception v4

    .line 349
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 400
    :catch_3
    move-exception v2

    .line 401
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 392
    :catch_4
    move-exception v2

    .line 393
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 394
    const/4 v2, -0x3

    .line 396
    if-eqz v19, :cond_0

    .line 399
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 400
    :catch_5
    move-exception v3

    .line 401
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 396
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_6

    .line 399
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 402
    :cond_6
    :goto_4
    throw v2

    .line 400
    :catch_6
    move-exception v3

    .line 401
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_7
    move-object v5, v12

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;)LGeneralFunction/s/c;
    .locals 12

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    const-string v0, "<APP_VER>1.XX.00</APP_VER>\n<CAMERA_VER>v1.XX00</CAMERA_VER>"

    .line 175
    new-instance v7, LGeneralFunction/s/c;

    invoke-direct {v7}, LGeneralFunction/s/c;-><init>()V

    .line 179
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v6, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch LGeneralFunction/s/a$a; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    new-instance v0, Lcom/b/a/a/g;

    invoke-direct {v0}, Lcom/b/a/a/g;-><init>()V

    .line 183
    new-instance v1, Lcom/b/a/a/e;

    invoke-direct {v1}, Lcom/b/a/a/e;-><init>()V

    .line 184
    new-instance v2, Lcom/b/a/a/h;

    invoke-direct {v2}, Lcom/b/a/a/h;-><init>()V

    .line 185
    const-string v3, "<APP_VER>1.XX.00</APP_VER>\n<CAMERA_VER>v1.XX00</CAMERA_VER>"

    invoke-virtual {v2, v3}, Lcom/b/a/a/h;->a(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, v2}, Lcom/b/a/a/e;->a(Lcom/b/a/a/a;)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/b/a/a/g;->a(Lcom/b/a/a/a;)V

    .line 189
    invoke-virtual {v0}, Lcom/b/a/a/g;->a()J

    move-result-wide v0

    long-to-int v8, v0

    .line 191
    new-instance v0, LGeneralFunction/t/b;

    invoke-direct {v0}, LGeneralFunction/t/b;-><init>()V

    .line 192
    invoke-virtual {v0, p1}, LGeneralFunction/t/b;->a(Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, LGeneralFunction/t/b;->a()LGeneralFunction/t/a;

    move-result-object v1

    .line 194
    const-string v2, "moov"

    invoke-virtual {v1, v2}, LGeneralFunction/t/a;->a(Ljava/lang/String;)LGeneralFunction/t/a;

    move-result-object v1

    .line 195
    if-nez v1, :cond_1

    .line 197
    const-string v0, "objVideoBox null"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/s/a;->a(Ljava/lang/String;I)V

    .line 198
    new-instance v0, LGeneralFunction/s/a$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, LGeneralFunction/s/a$a;-><init>(LGeneralFunction/s/a;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch LGeneralFunction/s/a$a; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 227
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    const/4 v0, -0x2

    iput v0, v7, LGeneralFunction/s/c;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 236
    if-eqz v1, :cond_0

    .line 240
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 247
    :cond_0
    :goto_1
    return-object v7

    .line 201
    :cond_1
    :try_start_4
    iget-wide v2, v1, LGeneralFunction/t/a;->a:J

    iget-wide v4, v1, LGeneralFunction/t/a;->b:J

    const-wide/16 v10, 0x8

    sub-long/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, LGeneralFunction/t/b;->a(LGeneralFunction/t/a;JJ)V

    .line 202
    const-string v0, "udta"

    invoke-virtual {v1, v0}, LGeneralFunction/t/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 204
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/t/a;

    .line 206
    iget-wide v2, v0, LGeneralFunction/t/a;->a:J

    const-wide/16 v4, 0x4

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 207
    new-array v0, v8, [B

    .line 208
    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 209
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 211
    const-string v0, "<APP_VER>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "<CAMERA_VER>"

    .line 212
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    const-string v0, "<APP_VER>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "<APP_VER>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    const-string v3, "</APP_VER>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, LGeneralFunction/s/c;->b:Ljava/lang/String;

    .line 215
    const-string v0, "<CAMERA_VER>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "<CAMERA_VER>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    const-string v3, "</CAMERA_VER>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, LGeneralFunction/s/c;->c:Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    iput v0, v7, LGeneralFunction/s/c;->a:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch LGeneralFunction/s/a$a; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 230
    :catch_1
    move-exception v0

    .line 232
    :goto_3
    const/4 v0, -0x3

    :try_start_5
    iput v0, v7, LGeneralFunction/s/c;->a:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    if-eqz v6, :cond_0

    .line 240
    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 241
    :catch_2
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 222
    :cond_3
    :try_start_7
    const-string v0, "pobjUdtaVideoBox null"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/s/a;->a(Ljava/lang/String;I)V

    .line 223
    new-instance v0, LGeneralFunction/s/a$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, LGeneralFunction/s/a$a;-><init>(LGeneralFunction/s/a;Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch LGeneralFunction/s/a$a; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 236
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_4

    .line 240
    :try_start_8
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 243
    :cond_4
    :goto_5
    throw v0

    .line 236
    :cond_5
    if-eqz v6, :cond_0

    .line 240
    :try_start_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_1

    .line 241
    :catch_3
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 241
    :catch_4
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 241
    :catch_5
    move-exception v1

    .line 242
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 236
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_4

    .line 230
    :catch_6
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 226
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method
