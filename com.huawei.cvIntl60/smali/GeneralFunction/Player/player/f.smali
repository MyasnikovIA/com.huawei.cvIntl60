.class public LGeneralFunction/Player/player/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/Player/player/f$b;,
        LGeneralFunction/Player/player/f$a;,
        LGeneralFunction/Player/player/f$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/hardware/SensorManager;

.field private d:Landroid/hardware/Sensor;

.field private e:Landroid/hardware/Sensor;

.field private f:Z

.field private g:LGeneralFunction/Player/player/f$a;

.field private h:LGeneralFunction/Player/player/f$b;

.field private i:LGeneralFunction/Player/player/h;

.field private j:Landroid/view/WindowManager;

.field private k:LGeneralFunction/Player/player/f$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "MotionStrategy"

    iput-object v0, p0, LGeneralFunction/Player/player/f;->a:Ljava/lang/String;

    .line 24
    iput v1, p0, LGeneralFunction/Player/player/f;->b:I

    .line 28
    iput-boolean v1, p0, LGeneralFunction/Player/player/f;->f:Z

    .line 31
    new-instance v0, LGeneralFunction/Player/player/h;

    invoke-direct {v0}, LGeneralFunction/Player/player/h;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/player/f;->i:LGeneralFunction/Player/player/h;

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/f;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, LGeneralFunction/Player/player/f;->j:Landroid/view/WindowManager;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 79
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, LGeneralFunction/Player/player/f;->c:Landroid/hardware/SensorManager;

    .line 82
    iput v2, p0, LGeneralFunction/Player/player/f;->b:I

    .line 83
    iget-object v0, p0, LGeneralFunction/Player/player/f;->d:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, LGeneralFunction/Player/player/f;->c:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/player/f;->d:Landroid/hardware/Sensor;

    .line 87
    iget-object v0, p0, LGeneralFunction/Player/player/f;->d:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 89
    iput v3, p0, LGeneralFunction/Player/player/f;->b:I

    .line 90
    iget-object v0, p0, LGeneralFunction/Player/player/f;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/player/f;->d:Landroid/hardware/Sensor;

    .line 91
    iget-object v0, p0, LGeneralFunction/Player/player/f;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/player/f;->e:Landroid/hardware/Sensor;

    .line 94
    :cond_0
    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/f;[FI)[F
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, LGeneralFunction/Player/player/f;->a([FI)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LGeneralFunction/Player/player/f;[F[FI)[F
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, LGeneralFunction/Player/player/f;->a([F[FI)[F

    move-result-object v0

    return-object v0
.end method

.method private a([FI)[F
    .locals 6

    .prologue
    const/16 v5, 0x82

    const/16 v4, 0x81

    const/16 v1, 0x10

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 115
    new-array v0, v1, [F

    .line 116
    new-array v1, v1, [F

    .line 118
    packed-switch p2, :pswitch_data_0

    .line 140
    :goto_0
    return-object v0

    .line 120
    :pswitch_0
    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 121
    invoke-static {v1, v4, v5, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 126
    invoke-static {v1, v2, v3, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 131
    invoke-static {v1, v5, v2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 136
    :pswitch_3
    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 137
    invoke-static {v1, v3, v4, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private a([F[FI)[F
    .locals 8

    .prologue
    const/high16 v2, 0x43870000    # 270.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 144
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 145
    const/16 v5, 0x10

    new-array v5, v5, [F

    .line 147
    packed-switch p3, :pswitch_data_0

    .line 169
    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    invoke-static {v0, v6, p2, p1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 150
    const/high16 v2, 0x42b40000    # 90.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-static {v0, v6, p2, p1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move v5, v4

    .line 154
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-static {v5, v6, p2, p1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 158
    const/16 v6, 0x82

    const/16 v7, 0x83

    invoke-static {v5, v6, v7, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move v5, v4

    .line 159
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0

    .line 163
    :pswitch_3
    invoke-static {v5, v6, p2, p1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 164
    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-static {v5, v6, v7, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move v5, v4

    .line 165
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(LGeneralFunction/Player/player/f;)LGeneralFunction/Player/player/f$c;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, LGeneralFunction/Player/player/f;->k:LGeneralFunction/Player/player/f$c;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 96
    iget v0, p0, LGeneralFunction/Player/player/f;->b:I

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 100
    :pswitch_0
    new-instance v0, LGeneralFunction/Player/player/f$a;

    invoke-direct {v0, p0}, LGeneralFunction/Player/player/f$a;-><init>(LGeneralFunction/Player/player/f;)V

    iput-object v0, p0, LGeneralFunction/Player/player/f;->g:LGeneralFunction/Player/player/f$a;

    .line 101
    iget-object v0, p0, LGeneralFunction/Player/player/f;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, LGeneralFunction/Player/player/f;->g:LGeneralFunction/Player/player/f$a;

    iget-object v2, p0, LGeneralFunction/Player/player/f;->d:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 105
    :pswitch_1
    new-instance v0, LGeneralFunction/Player/player/f$b;

    invoke-direct {v0, p0}, LGeneralFunction/Player/player/f$b;-><init>(LGeneralFunction/Player/player/f;)V

    iput-object v0, p0, LGeneralFunction/Player/player/f;->h:LGeneralFunction/Player/player/f$b;

    .line 106
    iget-object v0, p0, LGeneralFunction/Player/player/f;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, LGeneralFunction/Player/player/f;->h:LGeneralFunction/Player/player/f$b;

    iget-object v2, p0, LGeneralFunction/Player/player/f;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 107
    iget-object v0, p0, LGeneralFunction/Player/player/f;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, LGeneralFunction/Player/player/f;->h:LGeneralFunction/Player/player/f$b;

    iget-object v2, p0, LGeneralFunction/Player/player/f;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-boolean v0, p0, LGeneralFunction/Player/player/f;->f:Z

    if-nez v0, :cond_0

    .line 63
    const-string v0, "unregisterSensor 2 time!!"

    invoke-virtual {p0, v0, v1}, LGeneralFunction/Player/player/f;->a(Ljava/lang/String;I)V

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_0
    iput-boolean v1, p0, LGeneralFunction/Player/player/f;->f:Z

    .line 67
    iget v0, p0, LGeneralFunction/Player/player/f;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 70
    :pswitch_0
    iget-object v0, p0, LGeneralFunction/Player/player/f;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, LGeneralFunction/Player/player/f;->g:LGeneralFunction/Player/player/f$a;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/Player/player/f;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, LGeneralFunction/Player/player/f;->h:LGeneralFunction/Player/player/f$b;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(LGeneralFunction/Player/player/f$c;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, LGeneralFunction/Player/player/f;->k:LGeneralFunction/Player/player/f$c;

    .line 46
    return-void
.end method

.method protected a(Landroid/content/Context;LGeneralFunction/Player/player/h;)V
    .locals 2

    .prologue
    .line 49
    iget-boolean v0, p0, LGeneralFunction/Player/player/f;->f:Z

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "registerSensor 2 time!!"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LGeneralFunction/Player/player/f;->a(Ljava/lang/String;I)V

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/f;->f:Z

    .line 55
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, LGeneralFunction/Player/player/f;->j:Landroid/view/WindowManager;

    .line 56
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/f;->a(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0}, LGeneralFunction/Player/player/f;->b()V

    .line 58
    iput-object p2, p0, LGeneralFunction/Player/player/f;->i:LGeneralFunction/Player/player/h;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, LGeneralFunction/Player/player/f;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    return-void
.end method
