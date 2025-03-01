.class public LGeneralFunction/Player/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/Player/a/d$a;,
        LGeneralFunction/Player/a/d$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/nio/FloatBuffer;

.field private c:[Ljava/nio/ShortBuffer;

.field private d:[I

.field private e:I

.field private f:LGeneralFunction/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, LGeneralFunction/Player/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IFFFFII)V
    .locals 18

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v2, LGeneralFunction/j;

    invoke-direct {v2}, LGeneralFunction/j;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, LGeneralFunction/Player/a/d;->f:LGeneralFunction/j;

    .line 69
    add-int/lit8 v4, p1, 0x1

    .line 70
    mul-int v2, v4, v4

    .line 72
    const/16 v3, 0x7fff

    if-le v2, v3, :cond_0

    .line 74
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nSlices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too big for vertex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    mul-int v3, p1, p1

    mul-int/lit8 v3, v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, LGeneralFunction/Player/a/d;->e:I

    .line 78
    const v3, 0x40490fdb    # (float)Math.PI

    move/from16 v0, p1

    int-to-float v5, v0

    div-float v6, v3, v5

    .line 79
    const v3, 0x40c90fdb

    move/from16 v0, p1

    int-to-float v5, v0

    div-float v7, v3, v5

    .line 81
    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 82
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, LGeneralFunction/Player/a/d;->b:Ljava/nio/FloatBuffer;

    .line 83
    move/from16 v0, p6

    new-array v2, v0, [Ljava/nio/ShortBuffer;

    move-object/from16 v0, p0

    iput-object v2, v0, LGeneralFunction/Player/a/d;->c:[Ljava/nio/ShortBuffer;

    .line 84
    move/from16 v0, p6

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, LGeneralFunction/Player/a/d;->d:[I

    .line 86
    move-object/from16 v0, p0

    iget v2, v0, LGeneralFunction/Player/a/d;->e:I

    div-int v2, v2, p6

    div-int/lit8 v2, v2, 0x6

    mul-int/lit8 v3, v2, 0x6

    .line 88
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v5, p6, -0x1

    if-ge v2, v5, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v5, v0, LGeneralFunction/Player/a/d;->d:[I

    aput v3, v5, v2

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/a/d;->d:[I

    add-int/lit8 v5, p6, -0x1

    move-object/from16 v0, p0

    iget v8, v0, LGeneralFunction/Player/a/d;->e:I

    add-int/lit8 v9, p6, -0x1

    mul-int/2addr v3, v9

    sub-int v3, v8, v3

    aput v3, v2, v5

    .line 94
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p6

    if-ge v2, v0, :cond_2

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/Player/a/d;->c:[Ljava/nio/ShortBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, LGeneralFunction/Player/a/d;->d:[I

    aget v5, v5, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 96
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p7

    if-gt v0, v2, :cond_3

    .line 101
    const/4 v3, 0x0

    move-object/from16 v2, p0

    move v5, v4

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p1

    invoke-direct/range {v2 .. v12}, LGeneralFunction/Player/a/d;->a(IIIFFFFFFI)V

    .line 102
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, LGeneralFunction/Player/a/d;->a(II)V

    .line 108
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/a/d;->b:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    const/4 v2, 0x0

    :goto_3
    move/from16 v0, p6

    if-ge v2, v0, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/Player/a/d;->c:[Ljava/nio/ShortBuffer;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p0

    move v9, v4

    move v10, v6

    move v11, v7

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p1

    move/from16 v17, p7

    .line 106
    invoke-direct/range {v8 .. v17}, LGeneralFunction/Player/a/d;->a(IFFFFFFII)V

    goto :goto_2

    .line 113
    :cond_4
    return-void
.end method

.method private a([I)I
    .locals 3

    .prologue
    .line 224
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 225
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 226
    aget v2, p1, v0

    if-le v2, v1, :cond_0

    aget v1, p1, v0

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    return v1
.end method

.method private a(IFFFFFFII)V
    .locals 18

    .prologue
    .line 117
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 118
    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_0
    move/from16 v0, v16

    move/from16 v1, p9

    if-ge v0, v1, :cond_0

    .line 120
    mul-int v4, p1, v16

    div-int v6, v4, p9

    .line 121
    add-int/lit8 v4, v16, 0x1

    mul-int v4, v4, p1

    div-int v7, v4, p9

    .line 123
    new-instance v4, LGeneralFunction/Player/a/d$b;

    move-object/from16 v5, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    invoke-direct/range {v4 .. v15}, LGeneralFunction/Player/a/d$b;-><init>(LGeneralFunction/Player/a/d;IIIFFFFFFI)V

    .line 124
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v4}, LGeneralFunction/Player/a/d$b;->start()V

    .line 118
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_0

    .line 127
    :cond_0
    new-instance v4, LGeneralFunction/Player/a/d$a;

    move-object/from16 v0, p0

    move/from16 v1, p8

    move/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, LGeneralFunction/Player/a/d$a;-><init>(LGeneralFunction/Player/a/d;II)V

    .line 128
    invoke-virtual {v4}, LGeneralFunction/Player/a/d$a;->start()V

    .line 129
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, LGeneralFunction/Player/a/d;->a(Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, LGeneralFunction/Player/a/d$a;->a()Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    :cond_1
    const-wide/16 v6, 0x1

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v5

    .line 134
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 138
    :cond_2
    return-void
.end method

.method private a(II)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 153
    .line 155
    iget-object v0, p0, LGeneralFunction/Player/a/d;->d:[I

    invoke-direct {p0, v0}, LGeneralFunction/Player/a/d;->a([I)I

    move-result v0

    new-array v5, v0, [S

    move v4, v2

    move v0, v2

    move v1, v2

    .line 157
    :goto_0
    if-ge v4, p1, :cond_2

    move v3, v2

    .line 158
    :goto_1
    if-ge v3, p1, :cond_1

    .line 159
    add-int/lit8 v6, v4, 0x1

    .line 160
    add-int/lit8 v7, v3, 0x1

    .line 161
    iget-object v8, p0, LGeneralFunction/Player/a/d;->d:[I

    aget v8, v8, v0

    if-lt v1, v8, :cond_0

    .line 163
    iget-object v1, p0, LGeneralFunction/Player/a/d;->c:[Ljava/nio/ShortBuffer;

    aget-object v1, v1, v0

    iget-object v8, p0, LGeneralFunction/Player/a/d;->d:[I

    aget v8, v8, v0

    invoke-virtual {v1, v5, v2, v8}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 166
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 168
    :cond_0
    add-int/lit8 v8, v1, 0x1

    mul-int v9, v4, p2

    add-int/2addr v9, v3

    int-to-short v9, v9

    aput-short v9, v5, v1

    .line 169
    add-int/lit8 v1, v8, 0x1

    mul-int v9, v6, p2

    add-int/2addr v9, v3

    int-to-short v9, v9

    aput-short v9, v5, v8

    .line 170
    add-int/lit8 v8, v1, 0x1

    mul-int v9, v6, p2

    add-int/2addr v9, v7

    int-to-short v9, v9

    aput-short v9, v5, v1

    .line 171
    add-int/lit8 v1, v8, 0x1

    mul-int v9, v4, p2

    add-int/2addr v9, v3

    int-to-short v9, v9

    aput-short v9, v5, v8

    .line 172
    add-int/lit8 v8, v1, 0x1

    mul-int/2addr v6, p2

    add-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v1

    .line 173
    add-int/lit8 v1, v8, 0x1

    mul-int v6, v4, p2

    add-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v8

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 157
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 176
    :cond_2
    iget-object v1, p0, LGeneralFunction/Player/a/d;->c:[Ljava/nio/ShortBuffer;

    aget-object v1, v1, v0

    iget-object v3, p0, LGeneralFunction/Player/a/d;->d:[I

    aget v0, v3, v0

    invoke-virtual {v1, v5, v2, v0}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 177
    return-void
.end method

.method private a(IIIFFFFFFI)V
    .locals 11

    .prologue
    .line 182
    mul-int/lit8 v2, p3, 0x5

    new-array v3, v2, [F

    .line 183
    :goto_0
    if-ge p1, p2, :cond_1

    .line 184
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_0

    .line 185
    mul-int/lit8 v4, v2, 0x5

    .line 186
    int-to-float v5, p1

    mul-float/2addr v5, p4

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 187
    int-to-float v6, v2

    mul-float v6, v6, p5

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 188
    int-to-float v7, p1

    mul-float/2addr v7, p4

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    .line 189
    int-to-float v8, v2

    mul-float v8, v8, p5

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 192
    add-int/lit8 v9, v4, 0x0

    mul-float v10, p9, v5

    mul-float/2addr v6, v10

    add-float v6, v6, p6

    aput v6, v3, v9

    .line 193
    add-int/lit8 v6, v4, 0x1

    mul-float v5, v5, p9

    mul-float/2addr v5, v8

    add-float v5, v5, p7

    aput v5, v3, v6

    .line 194
    add-int/lit8 v5, v4, 0x2

    mul-float v6, p9, v7

    add-float v6, v6, p8

    aput v6, v3, v5

    .line 197
    add-int/lit8 v5, v4, 0x3

    int-to-float v6, v2

    move/from16 v0, p10

    int-to-float v7, v0

    div-float/2addr v6, v7

    aput v6, v3, v5

    .line 198
    add-int/lit8 v4, v4, 0x4

    const/4 v5, 0x0

    int-to-float v6, p1

    sub-float/2addr v5, v6

    move/from16 v0, p10

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    :cond_0
    iget-object v2, p0, LGeneralFunction/Player/a/d;->f:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->a()I

    .line 202
    iget-object v2, p0, LGeneralFunction/Player/a/d;->b:Ljava/nio/FloatBuffer;

    array-length v4, v3

    mul-int/2addr v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    iget-object v2, p0, LGeneralFunction/Player/a/d;->b:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 204
    iget-object v2, p0, LGeneralFunction/Player/a/d;->f:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->b()V

    .line 183
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/a/d;II)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, LGeneralFunction/Player/a/d;->a(II)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/a/d;IIIFFFFFFI)V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p10}, LGeneralFunction/Player/a/d;->a(IIIFFFFFFI)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/Player/a/d$b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 141
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 143
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/Player/a/d$b;

    invoke-virtual {v0}, LGeneralFunction/Player/a/d$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_1
    return v2

    .line 141
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 148
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, LGeneralFunction/Player/a/d;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x14

    return v0
.end method

.method public c()[Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, LGeneralFunction/Player/a/d;->c:[Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public d()[I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, LGeneralFunction/Player/a/d;->d:[I

    return-object v0
.end method
