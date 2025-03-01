.class public LGeneralFunction/Player/player/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/player/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/f;

.field private b:[F

.field private c:[F

.field private d:[F

.field private e:I


# direct methods
.method public constructor <init>(LGeneralFunction/Player/player/f;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 195
    iput-object p1, p0, LGeneralFunction/Player/player/f$b;->a:LGeneralFunction/Player/player/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object v0, p0, LGeneralFunction/Player/player/f$b;->b:[F

    .line 197
    iput-object v0, p0, LGeneralFunction/Player/player/f$b;->c:[F

    .line 198
    iput-object v0, p0, LGeneralFunction/Player/player/f$b;->d:[F

    .line 199
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/Player/player/f$b;->e:I

    return-void
.end method

.method private a(FF)F
    .locals 8

    .prologue
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 203
    const v0, 0x3e4ccccd    # 0.2f

    .line 205
    sub-float v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 207
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 209
    float-to-double v2, p2

    float-to-double v4, p2

    sub-double v4, v6, v4

    float-to-double v6, p1

    add-double/2addr v4, v6

    float-to-double v0, v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 220
    :goto_0
    return v0

    .line 213
    :cond_0
    float-to-double v2, p2

    float-to-double v4, p2

    add-double/2addr v4, v6

    float-to-double v6, p1

    sub-double/2addr v4, v6

    float-to-double v0, v0

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    double-to-float v0, v0

    goto :goto_0

    .line 218
    :cond_1
    sub-float v1, p1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method private a(FFF)F
    .locals 2

    .prologue
    .line 225
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 237
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 238
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v0, p0, LGeneralFunction/Player/player/f$b;->b:[F

    .line 244
    :cond_0
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/f$b;->b:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, LGeneralFunction/Player/player/f$b;->c:[F

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, LGeneralFunction/Player/player/f$b;->a:LGeneralFunction/Player/player/f;

    iget-object v1, p0, LGeneralFunction/Player/player/f$b;->b:[F

    iget-object v2, p0, LGeneralFunction/Player/player/f$b;->c:[F

    iget-object v3, p0, LGeneralFunction/Player/player/f$b;->a:LGeneralFunction/Player/player/f;

    invoke-static {v3}, LGeneralFunction/Player/player/f;->a(LGeneralFunction/Player/player/f;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, LGeneralFunction/Player/player/f;->a(LGeneralFunction/Player/player/f;[F[FI)[F

    move-result-object v1

    .line 248
    iget-object v0, p0, LGeneralFunction/Player/player/f$b;->d:[F

    if-eqz v0, :cond_3

    .line 250
    iget v0, p0, LGeneralFunction/Player/player/f$b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LGeneralFunction/Player/player/f$b;->e:I

    .line 254
    invoke-static {v1}, LGeneralFunction/i;->a([F)[F

    move-result-object v0

    .line 255
    iget-object v1, p0, LGeneralFunction/Player/player/f$b;->d:[F

    invoke-static {v1}, LGeneralFunction/i;->a([F)[F

    move-result-object v1

    .line 257
    iget v2, p0, LGeneralFunction/Player/player/f$b;->e:I

    if-lez v2, :cond_1

    .line 259
    iput v6, p0, LGeneralFunction/Player/player/f$b;->e:I

    .line 261
    aget v2, v0, v6

    aget v3, v0, v7

    aget v4, v0, v8

    invoke-direct {p0, v2, v3, v4}, LGeneralFunction/Player/player/f$b;->a(FFF)F

    move-result v2

    aget v3, v1, v6

    aget v4, v1, v7

    aget v5, v1, v8

    invoke-direct {p0, v3, v4, v5}, LGeneralFunction/Player/player/f$b;->a(FFF)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 263
    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 270
    aget v2, v0, v6

    aget v3, v1, v6

    invoke-direct {p0, v2, v3}, LGeneralFunction/Player/player/f$b;->a(FF)F

    move-result v2

    .line 271
    aget v3, v0, v7

    aget v4, v1, v7

    invoke-direct {p0, v3, v4}, LGeneralFunction/Player/player/f$b;->a(FF)F

    move-result v3

    .line 272
    aget v0, v0, v8

    aget v1, v1, v8

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/player/f$b;->a(FF)F

    move-result v0

    .line 274
    invoke-static {v2, v3, v0}, LGeneralFunction/i;->a(FFF)[F

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/player/f$b;->d:[F

    .line 276
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 277
    iput v9, v0, Landroid/os/Message;->what:I

    .line 278
    iget-object v1, p0, LGeneralFunction/Player/player/f$b;->d:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    iget-object v1, p0, LGeneralFunction/Player/player/f$b;->a:LGeneralFunction/Player/player/f;

    invoke-static {v1}, LGeneralFunction/Player/player/f;->b(LGeneralFunction/Player/player/f;)LGeneralFunction/Player/player/f$c;

    move-result-object v1

    invoke-interface {v1, v0}, LGeneralFunction/Player/player/f$c;->a(Landroid/os/Message;)V

    .line 293
    :cond_1
    :goto_1
    return-void

    .line 239
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 240
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v0, p0, LGeneralFunction/Player/player/f$b;->c:[F

    goto/16 :goto_0

    .line 285
    :cond_3
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, LGeneralFunction/Player/player/f$b;->d:[F

    .line 286
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 287
    iput v9, v0, Landroid/os/Message;->what:I

    .line 288
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 289
    iget-object v1, p0, LGeneralFunction/Player/player/f$b;->a:LGeneralFunction/Player/player/f;

    invoke-static {v1}, LGeneralFunction/Player/player/f;->b(LGeneralFunction/Player/player/f;)LGeneralFunction/Player/player/f$c;

    move-result-object v1

    invoke-interface {v1, v0}, LGeneralFunction/Player/player/f$c;->a(Landroid/os/Message;)V

    goto :goto_1
.end method
