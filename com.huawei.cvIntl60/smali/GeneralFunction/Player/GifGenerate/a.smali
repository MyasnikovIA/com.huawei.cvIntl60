.class public LGeneralFunction/Player/GifGenerate/a;
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

.field private i:LGeneralFunction/Player/a/d;

.field private j:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, LGeneralFunction/Player/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/GifGenerate/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->g:[F

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->h:[F

    .line 48
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

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->j:Ljava/nio/FloatBuffer;

    .line 60
    sget-object v0, LGeneralFunction/Player/GifGenerate/a;->a:Ljava/lang/String;

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

    .line 61
    if-eq p2, v6, :cond_0

    if-ne p2, v10, :cond_1

    .line 62
    :cond_0
    new-instance v0, LGeneralFunction/Player/a/c;

    const v1, 0x7f090024

    invoke-static {p1, v1}, LGeneralFunction/Player/GifGenerate/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090023

    invoke-static {p1, v3}, LGeneralFunction/Player/GifGenerate/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LGeneralFunction/Player/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->b:LGeneralFunction/Player/a/c;

    .line 63
    sget-object v0, LGeneralFunction/Player/GifGenerate/a;->a:Ljava/lang/String;

    const-string v1, "Load the video_fragment_shader"

    invoke-static {v0, v1, v8}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->b:LGeneralFunction/Player/a/c;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, LGeneralFunction/Player/a/c;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/GifGenerate/a;->c:I

    .line 75
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->b:LGeneralFunction/Player/a/c;

    const-string v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, LGeneralFunction/Player/a/c;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/GifGenerate/a;->d:I

    .line 76
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->b:LGeneralFunction/Player/a/c;

    const-string v1, "uTextureMatrix"

    invoke-virtual {v0, v1}, LGeneralFunction/Player/a/c;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/GifGenerate/a;->e:I

    .line 77
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->b:LGeneralFunction/Player/a/c;

    const-string v1, "aTextureCoord"

    invoke-virtual {v0, v1}, LGeneralFunction/Player/a/c;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/GifGenerate/a;->f:I

    .line 79
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 81
    new-instance v0, LGeneralFunction/Player/a/d;

    const/16 v1, 0xb4

    const/high16 v5, 0x43fa0000    # 500.0f

    move v3, v2

    move v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, LGeneralFunction/Player/a/d;-><init>(IFFFFII)V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    .line 83
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->b:LGeneralFunction/Player/a/c;

    invoke-virtual {v0}, LGeneralFunction/Player/a/c;->a()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 85
    iget v0, p0, LGeneralFunction/Player/GifGenerate/a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 86
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 88
    iget v0, p0, LGeneralFunction/Player/GifGenerate/a;->c:I

    const/16 v2, 0x1406

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    invoke-virtual {v1}, LGeneralFunction/Player/a/d;->b()I

    move-result v4

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    invoke-virtual {v1}, LGeneralFunction/Player/a/d;->a()Ljava/nio/FloatBuffer;

    move-result-object v5

    move v1, v8

    move v3, v9

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 89
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 91
    iget v0, p0, LGeneralFunction/Player/GifGenerate/a;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 92
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 94
    iget v0, p0, LGeneralFunction/Player/GifGenerate/a;->f:I

    const/16 v2, 0x1406

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    invoke-virtual {v1}, LGeneralFunction/Player/a/d;->b()I

    move-result v4

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    invoke-virtual {v1}, LGeneralFunction/Player/a/d;->a()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    move v1, v10

    move v3, v9

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 95
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    :goto_1
    return-void

    .line 65
    :cond_1
    if-ne p2, v8, :cond_2

    .line 66
    new-instance v0, LGeneralFunction/Player/a/c;

    const v1, 0x7f090024

    invoke-static {p1, v1}, LGeneralFunction/Player/GifGenerate/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090022

    invoke-static {p1, v3}, LGeneralFunction/Player/GifGenerate/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LGeneralFunction/Player/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->b:LGeneralFunction/Player/a/c;

    .line 67
    sget-object v0, LGeneralFunction/Player/GifGenerate/a;->a:Ljava/lang/String;

    const-string v1, "Load the bitmap_fragment_shader"

    invoke-static {v0, v1, v8}, LGeneralFunction/Player/player/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 71
    :cond_2
    sget-object v0, LGeneralFunction/Player/GifGenerate/a;->a:Ljava/lang/String;

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

    .line 48
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

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 225
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 226
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 247
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 251
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :catch_1
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 243
    :catch_2
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 248
    :catch_3
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private a(II)V
    .locals 5

    .prologue
    const/16 v1, 0xc11

    const/4 v0, 0x0

    .line 130
    invoke-static {v0, v0, p2, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 131
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 132
    invoke-static {v0, v0, p2, p1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 133
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 134
    :goto_0
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    invoke-virtual {v1}, LGeneralFunction/Player/a/d;->d()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 135
    const/4 v1, 0x4

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    .line 136
    invoke-virtual {v2}, LGeneralFunction/Player/a/d;->d()[I

    move-result-object v2

    aget v2, v2, v0

    const/16 v3, 0x1403

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    .line 137
    invoke-virtual {v4}, LGeneralFunction/Player/a/d;->c()[Ljava/nio/ShortBuffer;

    move-result-object v4

    aget-object v4, v4, v0

    .line 135
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 138
    const-string v1, "glDrawElements"

    invoke-static {v1}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method private a([F[F[F[F[FIZ)V
    .locals 7

    .prologue
    .line 143
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 144
    iget v0, p0, LGeneralFunction/Player/GifGenerate/a;->c:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    invoke-virtual {v4}, LGeneralFunction/Player/a/d;->b()I

    move-result v4

    iget-object v5, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    invoke-virtual {v5}, LGeneralFunction/Player/a/d;->a()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 145
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 146
    iget v0, p0, LGeneralFunction/Player/GifGenerate/a;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 147
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 149
    iget v0, p0, LGeneralFunction/Player/GifGenerate/a;->f:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    invoke-virtual {v4}, LGeneralFunction/Player/a/d;->b()I

    move-result v4

    iget-object v5, p0, LGeneralFunction/Player/GifGenerate/a;->i:LGeneralFunction/Player/a/d;

    invoke-virtual {v5}, LGeneralFunction/Player/a/d;->a()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 150
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 154
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [F

    .line 155
    if-eqz p7, :cond_0

    .line 156
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->g:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p6, v6}, LGeneralFunction/Player/GifGenerate/a;->a(I[F)[F

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 160
    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p5

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 161
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->h:[F

    const/4 v1, 0x0

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/a;->g:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 163
    iget v0, p0, LGeneralFunction/Player/GifGenerate/a;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 164
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 165
    iget v0, p0, LGeneralFunction/Player/GifGenerate/a;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/a;->h:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 166
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 168
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->g:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p4

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_0
.end method

.method private a(I[F)[F
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 172
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    :pswitch_0
    return-object p2

    .line 176
    :pswitch_1
    const/high16 v2, 0x42b40000    # 90.0f

    move-object v0, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 177
    invoke-static {p2, v1, v3, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 183
    :pswitch_2
    const/high16 v2, 0x43340000    # 180.0f

    move-object v0, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 184
    invoke-static {p2, v1, v6, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 190
    :pswitch_3
    const/high16 v2, 0x43870000    # 270.0f

    move-object v0, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 191
    invoke-static {p2, v1, v6, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 172
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
    .line 123
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 124
    const-string v0, "glClear"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private b(II)V
    .locals 1

    .prologue
    const v0, 0x8d65

    .line 202
    packed-switch p1, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 204
    :pswitch_0
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 205
    const-string v0, "glBindTexture"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 209
    const-string v0, "glBindTexture"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_2
    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 213
    const-string v0, "glBindTexture"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/a;->b:LGeneralFunction/Player/a/c;

    invoke-virtual {v0}, LGeneralFunction/Player/a/c;->b()V

    .line 221
    return-void
.end method

.method public a(I[F[F[F[F[FIIIIZ)V
    .locals 10

    .prologue
    .line 114
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/a;->b()V

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p10

    move/from16 v9, p11

    .line 115
    invoke-direct/range {v2 .. v9}, LGeneralFunction/Player/GifGenerate/a;->a([F[F[F[F[FIZ)V

    .line 116
    move/from16 v0, p7

    invoke-direct {p0, v0, p1}, LGeneralFunction/Player/GifGenerate/a;->b(II)V

    .line 117
    move/from16 v0, p9

    move/from16 v1, p8

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/GifGenerate/a;->a(II)V

    .line 119
    return-void
.end method
