.class public LGeneralFunction/Player/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:LGeneralFunction/Player/a/c;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[F

.field private h:[F

.field private i:[F

.field private j:[F

.field private k:LGeneralFunction/Player/a/d;

.field private l:Ljava/nio/FloatBuffer;

.field private m:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, LGeneralFunction/Player/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/4 v8, 0x3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v0, v1, [F

    iput-object v0, p0, LGeneralFunction/Player/a/e;->g:[F

    .line 56
    new-array v0, v1, [F

    iput-object v0, p0, LGeneralFunction/Player/a/e;->h:[F

    .line 58
    new-array v0, v1, [F

    iput-object v0, p0, LGeneralFunction/Player/a/e;->i:[F

    .line 59
    new-array v0, v1, [F

    iput-object v0, p0, LGeneralFunction/Player/a/e;->j:[F

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/Player/a/e;->l:Ljava/nio/FloatBuffer;

    .line 64
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/a/e;->m:Ljava/nio/FloatBuffer;

    .line 76
    sget-object v0, LGeneralFunction/Player/a/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SphericalSceneRenderer VideoMode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    if-eq p2, v6, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 79
    :cond_0
    new-instance v0, LGeneralFunction/Player/a/c;

    const v1, 0x7f090024

    invoke-static {p1, v1}, LGeneralFunction/Player/a/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090023

    invoke-static {p1, v3}, LGeneralFunction/Player/a/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LGeneralFunction/Player/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LGeneralFunction/Player/a/e;->b:LGeneralFunction/Player/a/c;

    .line 80
    sget-object v0, LGeneralFunction/Player/a/e;->a:Ljava/lang/String;

    const-string v1, "Load the video_fragment_shader"

    invoke-static {v0, v1, v8}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/a/e;->b:LGeneralFunction/Player/a/c;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, LGeneralFunction/Player/a/c;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/a/e;->c:I

    .line 92
    iget-object v0, p0, LGeneralFunction/Player/a/e;->b:LGeneralFunction/Player/a/c;

    const-string v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, LGeneralFunction/Player/a/c;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/a/e;->d:I

    .line 93
    iget-object v0, p0, LGeneralFunction/Player/a/e;->b:LGeneralFunction/Player/a/c;

    const-string v1, "uTextureMatrix"

    invoke-virtual {v0, v1}, LGeneralFunction/Player/a/c;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/a/e;->e:I

    .line 94
    iget-object v0, p0, LGeneralFunction/Player/a/e;->b:LGeneralFunction/Player/a/c;

    const-string v1, "aTextureCoord"

    invoke-virtual {v0, v1}, LGeneralFunction/Player/a/c;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/a/e;->f:I

    .line 96
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 98
    new-instance v0, LGeneralFunction/Player/a/d;

    const/16 v1, 0xb4

    move v3, v2

    move v4, v2

    move v5, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, LGeneralFunction/Player/a/d;-><init>(IFFFFII)V

    iput-object v0, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    .line 100
    iget-object v0, p0, LGeneralFunction/Player/a/e;->b:LGeneralFunction/Player/a/c;

    invoke-virtual {v0}, LGeneralFunction/Player/a/c;->a()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 102
    iget v0, p0, LGeneralFunction/Player/a/e;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 103
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 105
    iget v0, p0, LGeneralFunction/Player/a/e;->c:I

    const/16 v2, 0x1406

    iget-object v1, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v1}, LGeneralFunction/Player/a/d;->b()I

    move-result v4

    iget-object v1, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v1}, LGeneralFunction/Player/a/d;->a()Ljava/nio/FloatBuffer;

    move-result-object v5

    move v1, v8

    move v3, v9

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 106
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 108
    iget v0, p0, LGeneralFunction/Player/a/e;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 109
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 111
    iget v0, p0, LGeneralFunction/Player/a/e;->f:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v3}, LGeneralFunction/Player/a/d;->b()I

    move-result v4

    iget-object v3, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v3}, LGeneralFunction/Player/a/d;->a()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    move v3, v9

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 112
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, LGeneralFunction/Player/a/e;->m:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    :goto_1
    return-void

    .line 82
    :cond_1
    if-ne p2, v8, :cond_2

    .line 83
    new-instance v0, LGeneralFunction/Player/a/c;

    const v1, 0x7f090024

    invoke-static {p1, v1}, LGeneralFunction/Player/a/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090022

    invoke-static {p1, v3}, LGeneralFunction/Player/a/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LGeneralFunction/Player/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LGeneralFunction/Player/a/e;->b:LGeneralFunction/Player/a/c;

    .line 84
    sget-object v0, LGeneralFunction/Player/a/e;->a:Ljava/lang/String;

    const-string v1, "Load the bitmap_fragment_shader"

    invoke-static {v0, v1, v8}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 88
    :cond_2
    sget-object v0, LGeneralFunction/Player/a/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not correct VideoMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 64
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 456
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 457
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 468
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 478
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 482
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 469
    :catch_1
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 474
    :catch_2
    move-exception v0

    .line 475
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 479
    :catch_3
    move-exception v0

    .line 480
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private a(I)V
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 304
    :goto_0
    :pswitch_0
    return-void

    .line 287
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/Player/a/e;->h:[F

    const/high16 v2, -0x3d4c0000    # -90.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 288
    iget-object v0, p0, LGeneralFunction/Player/a/e;->h:[F

    invoke-static {v0, v1, v3, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/Player/a/e;->h:[F

    const/high16 v2, 0x43340000    # 180.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 294
    iget-object v0, p0, LGeneralFunction/Player/a/e;->h:[F

    invoke-static {v0, v1, v3, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 299
    :pswitch_3
    iget-object v0, p0, LGeneralFunction/Player/a/e;->h:[F

    const/high16 v2, 0x42b40000    # 90.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 300
    iget-object v0, p0, LGeneralFunction/Player/a/e;->h:[F

    invoke-static {v0, v1, v3, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(II)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 180
    neg-int v0, p2

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x7

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, p2, 0x5

    div-int/lit8 v2, v2, 0x7

    mul-int/lit8 v3, p1, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 181
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 183
    mul-int/lit8 v0, p2, 0x1

    div-int/lit8 v0, v0, 0x7

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, p2, 0x5

    div-int/lit8 v2, v2, 0x7

    mul-int/lit8 v3, p1, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 184
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 186
    mul-int/lit8 v0, p2, 0x6

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, -0x1

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, p2, 0x5

    div-int/lit8 v2, v2, 0x7

    mul-int/lit8 v3, p1, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 187
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 189
    return-void
.end method

.method private a(III)V
    .locals 7

    .prologue
    const/16 v6, 0x1403

    const/4 v5, 0x4

    const/16 v4, 0xc11

    const/4 v1, 0x0

    .line 193
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 195
    div-int/lit8 v0, p2, 0x2

    invoke-static {v1, v1, v0, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 196
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 197
    div-int/lit8 v0, p2, 0x2

    invoke-static {v1, v1, v0, p1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 198
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    move v0, v1

    .line 199
    :goto_0
    iget-object v2, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v2}, LGeneralFunction/Player/a/d;->d()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 200
    iget-object v2, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    .line 201
    invoke-virtual {v2}, LGeneralFunction/Player/a/d;->d()[I

    move-result-object v2

    aget v2, v2, v0

    iget-object v3, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    .line 202
    invoke-virtual {v3}, LGeneralFunction/Player/a/d;->c()[Ljava/nio/ShortBuffer;

    move-result-object v3

    aget-object v3, v3, v0

    .line 200
    invoke-static {v5, v2, v6, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 203
    const-string v2, "glDrawElements"

    invoke-static {v2}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    div-int/lit8 v0, p2, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, v2, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 207
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 208
    div-int/lit8 v0, p2, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, v2, p1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 209
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 210
    :goto_1
    iget-object v0, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v0}, LGeneralFunction/Player/a/d;->d()[I

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 211
    iget-object v0, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    .line 212
    invoke-virtual {v0}, LGeneralFunction/Player/a/d;->d()[I

    move-result-object v0

    aget v0, v0, v1

    iget-object v2, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    .line 213
    invoke-virtual {v2}, LGeneralFunction/Player/a/d;->c()[Ljava/nio/ShortBuffer;

    move-result-object v2

    aget-object v2, v2, v1

    .line 211
    invoke-static {v5, v0, v6, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 214
    const-string v0, "glDrawElements"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_1
    invoke-static {v1, v1, p2, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 219
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 220
    invoke-static {v1, v1, p2, p1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 221
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 222
    :goto_2
    iget-object v0, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v0}, LGeneralFunction/Player/a/d;->d()[I

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 223
    iget-object v0, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    .line 224
    invoke-virtual {v0}, LGeneralFunction/Player/a/d;->d()[I

    move-result-object v0

    aget v0, v0, v1

    iget-object v2, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    .line 225
    invoke-virtual {v2}, LGeneralFunction/Player/a/d;->c()[Ljava/nio/ShortBuffer;

    move-result-object v2

    aget-object v2, v2, v1

    .line 223
    invoke-static {v5, v0, v6, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 226
    const-string v0, "glDrawElements"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 229
    :cond_2
    return-void
.end method

.method private a(IIII)V
    .locals 3

    .prologue
    const/16 v0, 0xc11

    const/4 v2, 0x0

    .line 169
    invoke-static {v2, v2, p3, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 170
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 171
    invoke-static {v2, v2, p3, p2}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 172
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 173
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 174
    const-string v0, "glDrawArrays"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private a([F[F[F[FF)V
    .locals 8

    .prologue
    .line 365
    const/16 v0, 0x10

    new-array v6, v0, [F

    .line 367
    const/16 v0, 0x10

    new-array v7, v0, [F

    .line 370
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p5, v0

    if-gez v0, :cond_0

    .line 373
    const/high16 v0, 0x3f800000    # 1.0f

    .line 374
    const/16 v1, 0x48

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/16 v2, 0x12

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    neg-float v4, p5

    aput v4, v2, v3

    const/4 v3, 0x2

    const/high16 v4, -0x3f000000    # -8.0f

    aput v4, v2, v3

    const/4 v3, 0x3

    neg-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x4

    aput p5, v2, v3

    const/4 v3, 0x5

    const/high16 v4, -0x3f000000    # -8.0f

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v0, v2, v3

    const/4 v3, 0x7

    aput p5, v2, v3

    const/16 v3, 0x8

    const/high16 v4, -0x3f000000    # -8.0f

    aput v4, v2, v3

    const/16 v3, 0x9

    aput v0, v2, v3

    const/16 v3, 0xa

    neg-float v4, p5

    aput v4, v2, v3

    const/16 v3, 0xb

    const/high16 v4, -0x3f000000    # -8.0f

    aput v4, v2, v3

    const/16 v3, 0xc

    neg-float v4, v0

    aput v4, v2, v3

    const/16 v3, 0xd

    neg-float v4, p5

    aput v4, v2, v3

    const/16 v3, 0xe

    const/high16 v4, -0x3f000000    # -8.0f

    aput v4, v2, v3

    const/16 v3, 0xf

    neg-float v0, v0

    aput v0, v2, v3

    const/16 v0, 0x10

    aput p5, v2, v0

    const/16 v0, 0x11

    const/high16 v3, -0x3f000000    # -8.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/a/e;->l:Ljava/nio/FloatBuffer;

    .line 400
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/a/e;->l:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 402
    iget v0, p0, LGeneralFunction/Player/a/e;->c:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, LGeneralFunction/Player/a/e;->l:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 403
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 404
    iget v0, p0, LGeneralFunction/Player/a/e;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 405
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 407
    iget v0, p0, LGeneralFunction/Player/a/e;->f:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, LGeneralFunction/Player/a/e;->m:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 408
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v6, v0, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 412
    iget-object v0, p0, LGeneralFunction/Player/a/e;->g:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 413
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 414
    iget-object v0, p0, LGeneralFunction/Player/a/e;->i:[F

    const/4 v1, 0x0

    iget-object v2, p0, LGeneralFunction/Player/a/e;->g:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 416
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 421
    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, LGeneralFunction/Player/a/e;->i:[F

    .line 427
    iget v1, p0, LGeneralFunction/Player/a/e;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 428
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 429
    iget v0, p0, LGeneralFunction/Player/a/e;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, LGeneralFunction/Player/a/e;->i:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 430
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 431
    return-void

    .line 386
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 387
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p5

    .line 388
    const/16 v2, 0x48

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    const/16 v3, 0x12

    new-array v3, v3, [F

    const/4 v4, 0x0

    neg-float v5, v0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    const/high16 v5, -0x3f000000    # -8.0f

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v0, v3, v4

    const/4 v4, 0x4

    neg-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x5

    const/high16 v5, -0x3f000000    # -8.0f

    aput v5, v3, v4

    const/4 v4, 0x6

    aput v0, v3, v4

    const/4 v4, 0x7

    aput v1, v3, v4

    const/16 v4, 0x8

    const/high16 v5, -0x3f000000    # -8.0f

    aput v5, v3, v4

    const/16 v4, 0x9

    neg-float v5, v0

    aput v5, v3, v4

    const/16 v4, 0xa

    aput v1, v3, v4

    const/16 v4, 0xb

    const/high16 v5, -0x3f000000    # -8.0f

    aput v5, v3, v4

    const/16 v4, 0xc

    neg-float v5, v0

    aput v5, v3, v4

    const/16 v4, 0xd

    neg-float v5, v1

    aput v5, v3, v4

    const/16 v4, 0xe

    const/high16 v5, -0x3f000000    # -8.0f

    aput v5, v3, v4

    const/16 v4, 0xf

    aput v0, v3, v4

    const/16 v0, 0x10

    neg-float v1, v1

    aput v1, v3, v0

    const/16 v0, 0x11

    const/high16 v1, -0x3f000000    # -8.0f

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/a/e;->l:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 416
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 421
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a([F[F[F[F[FIZII)V
    .locals 9

    .prologue
    .line 235
    const/16 v1, 0x10

    new-array v8, v1, [F

    .line 236
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p1, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget v1, p0, LGeneralFunction/Player/a/e;->c:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v5}, LGeneralFunction/Player/a/d;->b()I

    move-result v5

    iget-object v6, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v6}, LGeneralFunction/Player/a/d;->a()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 239
    const-string v1, "glVertexAttribPointer"

    invoke-static {v1}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 240
    iget v1, p0, LGeneralFunction/Player/a/e;->f:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 241
    const-string v1, "glEnableVertexAttribArray"

    invoke-static {v1}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 243
    iget v1, p0, LGeneralFunction/Player/a/e;->f:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v5}, LGeneralFunction/Player/a/d;->b()I

    move-result v5

    iget-object v6, p0, LGeneralFunction/Player/a/e;->k:LGeneralFunction/Player/a/d;

    invoke-virtual {v6}, LGeneralFunction/Player/a/d;->a()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 244
    const-string v1, "glVertexAttribPointer"

    invoke-static {v1}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v8, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 248
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [F

    .line 249
    if-eqz p7, :cond_2

    .line 250
    iget-object v1, p0, LGeneralFunction/Player/a/e;->h:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p6, v7}, LGeneralFunction/Player/a/e;->a(I[F)[F

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 254
    :goto_0
    const/4 v1, 0x3

    move/from16 v0, p9

    if-ne v0, v1, :cond_0

    const/4 v1, 0x2

    move/from16 v0, p8

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    move/from16 v0, p9

    if-ne v0, v1, :cond_4

    const/4 v1, 0x3

    move/from16 v0, p8

    if-ne v0, v1, :cond_4

    .line 257
    :cond_1
    if-eqz p7, :cond_3

    .line 259
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p5

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 260
    invoke-direct {p0, p6}, LGeneralFunction/Player/a/e;->a(I)V

    .line 261
    invoke-virtual {p5}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 262
    const/4 v2, 0x0

    invoke-direct {p0, p6, v1}, LGeneralFunction/Player/a/e;->b(I[F)[F

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 274
    :goto_1
    iget-object v1, p0, LGeneralFunction/Player/a/e;->j:[F

    const/4 v2, 0x0

    iget-object v3, p0, LGeneralFunction/Player/a/e;->h:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 276
    iget v1, p0, LGeneralFunction/Player/a/e;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v8, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 277
    const-string v1, "glUniformMatrix4fv"

    invoke-static {v1}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 278
    iget v1, p0, LGeneralFunction/Player/a/e;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, LGeneralFunction/Player/a/e;->j:[F

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 279
    const-string v1, "glUniformMatrix4fv"

    invoke-static {v1}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 280
    return-void

    .line 252
    :cond_2
    iget-object v1, p0, LGeneralFunction/Player/a/e;->h:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p4

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_0

    .line 266
    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p5

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_1

    .line 271
    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p5

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_1
.end method

.method private a(I[F)[F
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 307
    packed-switch p1, :pswitch_data_0

    .line 331
    :goto_0
    :pswitch_0
    return-object p2

    .line 311
    :pswitch_1
    const/high16 v2, 0x42b40000    # 90.0f

    move-object v0, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 312
    invoke-static {p2, v1, v3, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 317
    :pswitch_2
    const/high16 v2, 0x43340000    # 180.0f

    move-object v0, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 318
    invoke-static {p2, v1, v3, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 324
    :pswitch_3
    const/high16 v2, 0x43870000    # 270.0f

    move-object v0, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 325
    invoke-static {p2, v1, v6, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private b()V
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 165
    return-void
.end method

.method private b(II)V
    .locals 1

    .prologue
    const v0, 0x8d65

    .line 434
    packed-switch p1, :pswitch_data_0

    .line 448
    :goto_0
    return-void

    .line 436
    :pswitch_0
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 437
    const-string v0, "glBindTexture"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :pswitch_1
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 441
    const-string v0, "glBindTexture"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :pswitch_2
    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 445
    const-string v0, "glBindTexture"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(I[F)[F
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 338
    packed-switch p1, :pswitch_data_0

    .line 360
    :goto_0
    :pswitch_0
    return-object p2

    .line 342
    :pswitch_1
    const/high16 v2, 0x42b40000    # 90.0f

    move-object v0, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 343
    invoke-static {p2, v1, v3, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 348
    :pswitch_2
    const/high16 v2, 0x43340000    # 180.0f

    move-object v0, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 349
    invoke-static {p2, v1, v3, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 355
    :pswitch_3
    const/high16 v2, 0x43870000    # 270.0f

    move-object v0, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 356
    invoke-static {p2, v1, v6, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, LGeneralFunction/Player/a/e;->b:LGeneralFunction/Player/a/c;

    invoke-virtual {v0}, LGeneralFunction/Player/a/c;->b()V

    .line 452
    return-void
.end method

.method public a(I[F[F[F[F[FIIIFIIIZIZ)V
    .locals 14

    .prologue
    .line 135
    invoke-direct {p0}, LGeneralFunction/Player/a/e;->b()V

    .line 136
    packed-switch p7, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p10

    .line 138
    invoke-direct/range {v4 .. v9}, LGeneralFunction/Player/a/e;->a([F[F[F[FF)V

    .line 139
    move/from16 v0, p8

    invoke-direct {p0, v0, p1}, LGeneralFunction/Player/a/e;->b(II)V

    .line 140
    move/from16 v0, p7

    move/from16 v1, p13

    move/from16 v2, p12

    move/from16 v3, p11

    invoke-direct {p0, v0, v1, v2, v3}, LGeneralFunction/Player/a/e;->a(IIII)V

    goto :goto_0

    :pswitch_1
    move-object v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p15

    move/from16 v11, p16

    move/from16 v12, p9

    move/from16 v13, p8

    .line 148
    invoke-direct/range {v4 .. v13}, LGeneralFunction/Player/a/e;->a([F[F[F[F[FIZII)V

    .line 149
    move/from16 v0, p8

    invoke-direct {p0, v0, p1}, LGeneralFunction/Player/a/e;->b(II)V

    .line 150
    move/from16 v0, p13

    move/from16 v1, p12

    move/from16 v2, p11

    invoke-direct {p0, v0, v1, v2}, LGeneralFunction/Player/a/e;->a(III)V

    .line 152
    if-eqz p14, :cond_0

    move-object v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p10

    .line 154
    invoke-direct/range {v4 .. v9}, LGeneralFunction/Player/a/e;->a([F[F[F[FF)V

    .line 155
    move/from16 v0, p8

    invoke-direct {p0, v0, p1}, LGeneralFunction/Player/a/e;->b(II)V

    .line 156
    move/from16 v0, p13

    move/from16 v1, p12

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/a/e;->a(II)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
