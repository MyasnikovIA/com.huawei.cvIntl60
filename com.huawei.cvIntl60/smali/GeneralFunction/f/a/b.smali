.class public LGeneralFunction/f/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/f/a/b$d;,
        LGeneralFunction/f/a/b$a;,
        LGeneralFunction/f/a/b$c;,
        LGeneralFunction/f/a/b$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:J

.field private d:LGeneralFunction/f/a/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, LGeneralFunction/f/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/f/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/f/a/b;->b:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LGeneralFunction/f/a/b;->c:J

    .line 39
    new-instance v0, LGeneralFunction/f/a/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LGeneralFunction/f/a/b$c;-><init>(LGeneralFunction/f/a/b;LGeneralFunction/f/a/b$1;)V

    iput-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    .line 54
    return-void
.end method

.method private a(LGeneralFunction/f/a/b$c;)I
    .locals 2

    .prologue
    .line 146
    invoke-static {p1}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;)Landroid/media/MediaMuxer;

    move-result-object v0

    invoke-static {p1}, LGeneralFunction/f/a/b$c;->e(LGeneralFunction/f/a/b$c;)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    invoke-static {p1, v0}, LGeneralFunction/f/a/b$c;->a(LGeneralFunction/f/a/b$c;I)I

    .line 147
    invoke-static {p1}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;)Landroid/media/MediaMuxer;

    move-result-object v0

    invoke-static {p1}, LGeneralFunction/f/a/b$c;->f(LGeneralFunction/f/a/b$c;)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    invoke-static {p1, v0}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;I)I

    .line 148
    invoke-static {p1}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;)Landroid/media/MediaMuxer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method private a(LGeneralFunction/f/a/b$c;Ljava/lang/String;)I
    .locals 16

    .prologue
    .line 168
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractFileAndFeedToMuxer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 170
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, LGeneralFunction/f/a/b$c;->a(LGeneralFunction/f/a/b$c;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;

    .line 172
    :try_start_0
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->g(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->g(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v2

    const-string v3, "audio/"

    invoke-static {v2, v3}, LGeneralFunction/p/a;->a(Landroid/media/MediaExtractor;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v2

    .line 179
    if-nez v2, :cond_1

    .line 181
    const-string v2, "No audio track!"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 182
    invoke-direct/range {p0 .. p1}, LGeneralFunction/f/a/b;->b(LGeneralFunction/f/a/b$c;)V

    .line 183
    const/4 v2, -0x3

    .line 300
    :cond_0
    :goto_0
    return v2

    .line 173
    :catch_0
    move-exception v2

    .line 174
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    invoke-direct/range {p0 .. p1}, LGeneralFunction/f/a/b;->b(LGeneralFunction/f/a/b$c;)V

    .line 176
    const/4 v2, -0x1

    goto :goto_0

    .line 185
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 186
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;

    .line 188
    :try_start_1
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->h(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->h(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v3

    const-string v4, "video/"

    invoke-static {v3, v4}, LGeneralFunction/p/a;->a(Landroid/media/MediaExtractor;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v3

    .line 195
    if-nez v3, :cond_2

    .line 197
    const-string v2, "No video track!"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 198
    invoke-direct/range {p0 .. p1}, LGeneralFunction/f/a/b;->b(LGeneralFunction/f/a/b$c;)V

    .line 199
    const/4 v2, -0x2

    goto :goto_0

    .line 189
    :catch_1
    move-exception v2

    .line 190
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 191
    invoke-direct/range {p0 .. p1}, LGeneralFunction/f/a/b;->b(LGeneralFunction/f/a/b$c;)V

    .line 192
    const/4 v2, -0x1

    goto :goto_0

    .line 201
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video format:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 203
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->i(LGeneralFunction/f/a/b$c;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 204
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;Z)Z

    .line 205
    const-string v4, "channel-count"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, LGeneralFunction/f/a/b$c;->c(LGeneralFunction/f/a/b$c;I)I

    .line 206
    const-string v4, "sample-rate"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, LGeneralFunction/f/a/b$c;->d(LGeneralFunction/f/a/b$c;I)I

    .line 207
    const-string v4, "frame-rate"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, LGeneralFunction/f/a/b$c;->e(LGeneralFunction/f/a/b$c;I)I

    .line 208
    move-object/from16 v0, p1

    invoke-static {v0, v3}, LGeneralFunction/f/a/b$c;->a(LGeneralFunction/f/a/b$c;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    .line 209
    move-object/from16 v0, p1

    invoke-static {v0, v2}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lAudioChannel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->j(LGeneralFunction/f/a/b$c;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lSampleRate:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->k(LGeneralFunction/f/a/b$c;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lVideoFrameRate:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->l(LGeneralFunction/f/a/b$c;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sVideoFormat:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->e(LGeneralFunction/f/a/b$c;)Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sAudioFormat:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->f(LGeneralFunction/f/a/b$c;)Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 215
    invoke-direct/range {p0 .. p1}, LGeneralFunction/f/a/b;->a(LGeneralFunction/f/a/b$c;)I

    move-result v2

    .line 216
    if-ltz v2, :cond_0

    .line 223
    :cond_3
    const-string v2, "max-input-size"

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 224
    if-gtz v2, :cond_4

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not have lVideoMaxInputSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 227
    const/high16 v2, 0x100000

    .line 229
    :cond_4
    const/4 v6, 0x0

    .line 230
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->d(LGeneralFunction/f/a/b$c;)J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->l(LGeneralFunction/f/a/b$c;)I

    move-result v3

    int-to-long v8, v3

    div-long v12, v4, v8

    .line 231
    const-wide/16 v4, -0x1

    .line 232
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 233
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->h(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, LGeneralFunction/f/a/b;->b:I

    const v7, 0xf4240

    mul-int/2addr v3, v7

    int-to-long v8, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v8, v9, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-wide v2, v4

    move v9, v6

    .line 235
    :goto_1
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->c(LGeneralFunction/f/a/b$c;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 237
    invoke-direct/range {p0 .. p1}, LGeneralFunction/f/a/b;->b(LGeneralFunction/f/a/b$c;)V

    .line 238
    const/4 v2, -0x5

    goto/16 :goto_0

    .line 240
    :cond_5
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->h(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 241
    if-gez v5, :cond_8

    move-wide v10, v2

    move v4, v9

    .line 259
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video frame count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 261
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->d(LGeneralFunction/f/a/b$c;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->l(LGeneralFunction/f/a/b$c;)I

    move-result v4

    int-to-long v4, v4

    div-long v14, v2, v4

    .line 264
    const/4 v2, 0x0

    .line 265
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->j(LGeneralFunction/f/a/b$c;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 266
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->g(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, LGeneralFunction/f/a/b;->b:I

    const v5, 0xf4240

    mul-int/2addr v4, v5

    int-to-long v4, v4

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 268
    :cond_7
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->c(LGeneralFunction/f/a/b$c;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 270
    invoke-direct/range {p0 .. p1}, LGeneralFunction/f/a/b;->b(LGeneralFunction/f/a/b$c;)V

    .line 271
    const/4 v2, -0x5

    goto/16 :goto_0

    .line 245
    :cond_8
    const-wide/16 v6, -0x1

    cmp-long v4, v2, v6

    if-nez v4, :cond_d

    .line 247
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->h(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    .line 249
    :goto_2
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->d(LGeneralFunction/f/a/b$c;)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->l(LGeneralFunction/f/a/b$c;)I

    move-result v4

    int-to-long v6, v4

    div-long v6, v2, v6

    .line 250
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->h(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    .line 251
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->m(LGeneralFunction/f/a/b$c;)J

    .line 252
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 253
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 255
    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 256
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;)Landroid/media/MediaMuxer;

    move-result-object v2

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->n(LGeneralFunction/f/a/b$c;)I

    move-result v4

    invoke-virtual {v2, v4, v14, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 257
    add-int/lit8 v4, v9, 0x1

    .line 258
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->h(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_6

    int-to-long v2, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, LGeneralFunction/f/a/b;->c:J

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->l(LGeneralFunction/f/a/b$c;)I

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v6, v8

    cmp-long v2, v2, v6

    if-gez v2, :cond_6

    move-wide v2, v10

    move v9, v4

    goto/16 :goto_1

    .line 273
    :cond_9
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->g(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 274
    if-gez v5, :cond_b

    .line 297
    :cond_a
    :goto_3
    invoke-direct/range {p0 .. p1}, LGeneralFunction/f/a/b;->b(LGeneralFunction/f/a/b$c;)V

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio frame count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 300
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 278
    :cond_b
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->g(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    sub-long/2addr v6, v10

    add-long/2addr v6, v12

    .line 279
    cmp-long v3, v6, v12

    if-gez v3, :cond_c

    .line 296
    :goto_4
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->g(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    move-result v3

    if-eqz v3, :cond_a

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, LGeneralFunction/f/a/b;->c:J

    long-to-float v4, v4

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->k(LGeneralFunction/f/a/b$c;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_7

    goto :goto_3

    .line 284
    :cond_c
    cmp-long v3, v6, v14

    if-gtz v3, :cond_a

    .line 289
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->g(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    .line 290
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 291
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 293
    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 294
    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;)Landroid/media/MediaMuxer;

    move-result-object v4

    invoke-static/range {p1 .. p1}, LGeneralFunction/f/a/b$c;->o(LGeneralFunction/f/a/b$c;)I

    move-result v5

    invoke-virtual {v4, v5, v9, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    move-wide v10, v2

    goto/16 :goto_2
.end method

.method private b(LGeneralFunction/f/a/b$c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-static {p1}, LGeneralFunction/f/a/b$c;->g(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p1}, LGeneralFunction/f/a/b$c;->g(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 157
    invoke-static {p1, v1}, LGeneralFunction/f/a/b$c;->a(LGeneralFunction/f/a/b$c;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;

    .line 159
    :cond_0
    invoke-static {p1}, LGeneralFunction/f/a/b$c;->h(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {p1}, LGeneralFunction/f/a/b$c;->h(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 162
    invoke-static {p1, v1}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;

    .line 164
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 85
    const/4 v3, -0x1

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 87
    iget-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-static {v0, v2}, LGeneralFunction/f/a/b$c;->a(LGeneralFunction/f/a/b$c;Z)Z

    .line 89
    :try_start_0
    iget-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    new-instance v1, Landroid/media/MediaMuxer;

    const/4 v6, 0x0

    invoke-direct {v1, p2, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, LGeneralFunction/f/a/b$c;->a(LGeneralFunction/f/a/b$c;Landroid/media/MediaMuxer;)Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 97
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 98
    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget-object v6, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-static {v6}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;)Landroid/media/MediaMuxer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 102
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    move v1, v2

    .line 104
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 106
    iget-object v3, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, LGeneralFunction/f/a/b;->a(LGeneralFunction/f/a/b$c;Ljava/lang/String;)I

    move-result v3

    .line 107
    iget-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-static {v0}, LGeneralFunction/f/a/b$c;->c(LGeneralFunction/f/a/b$c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    const/4 v3, -0x5

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total video frame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-static {v1}, LGeneralFunction/f/a/b$c;->d(LGeneralFunction/f/a/b$c;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 118
    iget-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-static {v0}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;)Landroid/media/MediaMuxer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    :try_start_1
    iget-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-static {v0}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;)Landroid/media/MediaMuxer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 122
    iget-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-static {v0}, LGeneralFunction/f/a/b$c;->b(LGeneralFunction/f/a/b$c;)Landroid/media/MediaMuxer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :goto_1
    iget-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/f/a/b$c;->a(LGeneralFunction/f/a/b$c;Landroid/media/MediaMuxer;)Landroid/media/MediaMuxer;

    .line 129
    :cond_2
    iget-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-static {v0}, LGeneralFunction/f/a/b$c;->c(LGeneralFunction/f/a/b$c;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t delete file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time cost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 141
    :goto_2
    return v3

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    const/4 v3, -0x4

    goto :goto_2

    .line 112
    :cond_4
    if-ltz v3, :cond_1

    .line 104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 124
    :catch_1
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "user cancel"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, LGeneralFunction/f/a/b;->a(Ljava/lang/String;I)V

    .line 59
    iget-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/f/a/b$c;->a(LGeneralFunction/f/a/b$c;Z)Z

    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, LGeneralFunction/f/a/b;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;LGeneralFunction/f/a/b$b;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "LGeneralFunction/f/a/b$b;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-static {v0, p3}, LGeneralFunction/f/a/b$c;->a(LGeneralFunction/f/a/b$c;LGeneralFunction/f/a/b$b;)LGeneralFunction/f/a/b$b;

    .line 72
    new-instance v0, LGeneralFunction/f/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LGeneralFunction/f/a/b$a;-><init>(LGeneralFunction/f/a/b;LGeneralFunction/f/a/b$1;)V

    .line 73
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, LGeneralFunction/f/a/b$d;

    invoke-direct {v3, p0, p1}, LGeneralFunction/f/a/b$d;-><init>(LGeneralFunction/f/a/b;Ljava/util/ArrayList;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, LGeneralFunction/f/a/b;->d:LGeneralFunction/f/a/b$c;

    invoke-static {v3}, LGeneralFunction/f/a/b$c;->a(LGeneralFunction/f/a/b$c;)LGeneralFunction/f/a/b$b;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, LGeneralFunction/f/a/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    iput p4, p0, LGeneralFunction/f/a/b;->b:I

    .line 75
    sub-int v0, p5, p4

    int-to-long v0, v0

    iput-wide v0, p0, LGeneralFunction/f/a/b;->c:J

    .line 76
    iget-wide v0, p0, LGeneralFunction/f/a/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 78
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, LGeneralFunction/f/a/b;->c:J

    .line 80
    :cond_0
    return-void
.end method
