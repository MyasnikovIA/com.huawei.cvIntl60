.class public LGeneralFunction/Player/player/SphericalVideoPlayer$g;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/player/SphericalVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/Player/player/SphericalVideoPlayer$g$a;
    }
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/SphericalVideoPlayer;

.field private b:Landroid/os/Handler;

.field private c:Landroid/view/Choreographer$FrameCallback;

.field private d:LGeneralFunction/Player/a/a;

.field private e:Landroid/graphics/SurfaceTexture;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[F

.field private k:[F

.field private l:[F

.field private m:[F

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:LGeneralFunction/Player/a/e;

.field private u:I

.field private v:J

.field private w:J


# direct methods
.method public constructor <init>(LGeneralFunction/Player/player/SphericalVideoPlayer;Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 1207
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 1208
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1154
    new-instance v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g$a;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer$g;LGeneralFunction/Player/player/SphericalVideoPlayer$1;)V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->c:Landroid/view/Choreographer$FrameCallback;

    .line 1158
    const/4 v0, -0x1

    iput v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f:I

    .line 1159
    iput v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->g:I

    .line 1161
    iput v4, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->h:I

    .line 1162
    iput v4, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->i:I

    .line 1164
    new-array v0, v3, [F

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->j:[F

    .line 1165
    new-array v0, v3, [F

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->k:[F

    .line 1166
    new-array v0, v3, [F

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->l:[F

    .line 1167
    new-array v0, v3, [F

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->m:[F

    .line 1170
    iput-boolean v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->o:Z

    .line 1171
    iput-boolean v4, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->p:Z

    .line 1175
    iput-boolean v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->q:Z

    .line 1176
    iput-boolean v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->r:Z

    .line 1177
    iput-boolean v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->s:Z

    .line 1181
    iput v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->u:I

    .line 1184
    iput-wide v6, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->v:J

    .line 1185
    iput-wide v6, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->w:J

    .line 1209
    new-instance v0, LGeneralFunction/Player/a/a;

    invoke-direct {v0}, LGeneralFunction/Player/a/a;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    .line 1210
    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)I
    .locals 0

    .prologue
    .line 1121
    iput p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->g:I

    return p1
.end method

.method private a()Landroid/view/Surface;
    .locals 3

    .prologue
    .line 1427
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->f(LGeneralFunction/Player/player/SphericalVideoPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1429
    const-string v0, "new surface is corrent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1436
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1437
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get video decode surface without GL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1433
    :cond_0
    const-string v0, "not new surface is error"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 1439
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(I)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f:I

    .line 1440
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e:Landroid/graphics/SurfaceTexture;

    .line 1442
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e:Landroid/graphics/SurfaceTexture;

    new-instance v1, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;

    invoke-direct {v1, p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g$2;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1464
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Landroid/view/Surface;)Landroid/view/Surface;

    .line 1465
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->f(LGeneralFunction/Player/player/SphericalVideoPlayer;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 1121
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method private a(FZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1915
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->t:F

    .line 1916
    if-eqz p2, :cond_0

    .line 1918
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/h;->b()V

    .line 1929
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    .line 1930
    return-void

    .line 1922
    :cond_0
    float-to-int v1, p1

    if-lt v1, v3, :cond_1

    .line 1924
    neg-float v0, v0

    .line 1926
    :cond_1
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->l:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, LGeneralFunction/Player/player/h;->a(F)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->p:I

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->o:I

    if-le v0, v1, :cond_0

    .line 1379
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LGeneralFunction/Player/player/h;->a(IZ)V

    .line 1385
    :goto_0
    return-void

    .line 1383
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LGeneralFunction/Player/player/h;->a(IZ)V

    goto :goto_0
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;FZ)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0, p1, p2}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(FZ)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;LGeneralFunction/Player/player/g;)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/g;)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0, p1, p2, p3}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(Z)V

    return-void
.end method

.method private a(LGeneralFunction/Player/player/g;)V
    .locals 4

    .prologue
    const v3, 0x3dcccccd    # 0.1f

    .line 1902
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v1, p1, LGeneralFunction/Player/player/g;->a:F

    neg-float v1, v1

    mul-float/2addr v1, v3

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->q:F

    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    iput v1, v0, LGeneralFunction/Player/player/h;->q:F

    .line 1903
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v1, p1, LGeneralFunction/Player/player/g;->b:F

    neg-float v1, v1

    mul-float/2addr v1, v3

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->r:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/h;->b(F)V

    .line 1904
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, LGeneralFunction/Player/player/h;->y:Z

    .line 1905
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/16 v4, 0xde1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1408
    const-string v0, "updateBitmap"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1409
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->h:I

    .line 1410
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->i:I

    .line 1411
    iget v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1412
    const-string v0, "glBindTexture"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1416
    invoke-static {v4, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1422
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    .line 1423
    return-void

    .line 1420
    :cond_0
    const-string v0, "updateBitmap with recycle bitmap!"

    invoke-static {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/SurfaceTexture;II)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfacePrepare w: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " h: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->r:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfacePrepare:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1508
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operation in status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1571
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    iget-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->r:Z

    if-nez v0, :cond_0

    .line 1516
    iput-boolean v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->r:Z

    .line 1517
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/a/a;->a(Landroid/graphics/SurfaceTexture;)V

    .line 1519
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1521
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1522
    const-string v0, "glViewport"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 1523
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1524
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1526
    int-to-float v0, p2

    int-to-float v2, p3

    div-float v3, v0, v2

    .line 1527
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->m:[F

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->e:F

    iget-object v4, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v4}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->d:F

    iget-object v5, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v5}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v5

    iget v5, v5, LGeneralFunction/Player/player/h;->c:F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 1528
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->l:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1530
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->c()V

    .line 1532
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v6, v6, v6, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1534
    new-instance v0, LGeneralFunction/Player/a/e;

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->m:I

    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-direct {v0, v2, v3, v4}, LGeneralFunction/Player/a/e;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->t:LGeneralFunction/Player/a/e;

    .line 1536
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    packed-switch v0, :pswitch_data_0

    .line 1568
    :cond_2
    :goto_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-object v0, v0, LGeneralFunction/Player/player/h;->z:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1569
    const-string v0, "surfacePrepare finish"

    invoke-static {v0, v7}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1538
    :pswitch_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez v0, :cond_3

    .line 1540
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->k(LGeneralFunction/Player/player/SphericalVideoPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Ljava/lang/String;)V

    goto :goto_1

    .line 1544
    :cond_3
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    move-result-object v2

    invoke-direct {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1545
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-boolean v0, v0, LGeneralFunction/Player/player/h;->n:Z

    if-eqz v0, :cond_4

    .line 1546
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->i(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    goto :goto_1

    .line 1549
    :cond_4
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v8}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 1550
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, v8}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;I)V

    goto :goto_1

    .line 1555
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->l(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    goto :goto_1

    .line 1558
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(I)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f:I

    .line 1560
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->m(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    .line 1561
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->n(LGeneralFunction/Player/player/SphericalVideoPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1562
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->n(LGeneralFunction/Player/player/SphericalVideoPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Ljava/lang/String;)V

    goto :goto_1

    .line 1536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Z)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1781
    iget-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->r:Z

    if-eqz v0, :cond_d

    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start_surfaceDestroy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1784
    iput-boolean v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->r:Z

    .line 1785
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1787
    if-nez p1, :cond_a

    .line 1789
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    if-eqz v0, :cond_0

    .line 1791
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->i()V

    .line 1792
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1793
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->d()V

    .line 1794
    iput-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    .line 1796
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->quit()Z

    .line 1799
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;LGeneralFunction/Player/player/SphericalVideoPlayer$g;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    .line 1801
    :cond_1
    iput-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->b:Landroid/os/Handler;

    .line 1805
    const-wide/16 v0, 0x1e

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput v3, v0, LGeneralFunction/Player/player/h;->a:I

    .line 1810
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_2

    .line 1811
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->reset()V

    .line 1812
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    .line 1813
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    .line 1814
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iput-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 1840
    :cond_2
    :goto_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1841
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_3

    .line 1843
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/e;

    move-result-object v0

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/e;->b(Z)V

    .line 1847
    :cond_3
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->p(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/c;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1849
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->p(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/c;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/c;->b()V

    .line 1850
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->p(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/c;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/c;->d()V

    .line 1851
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;LGeneralFunction/Player/player/c;)LGeneralFunction/Player/player/c;

    .line 1853
    :cond_4
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->q(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/d;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1855
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->q(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/d;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/d;->c()V

    .line 1856
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;LGeneralFunction/Player/player/d;)LGeneralFunction/Player/player/d;

    .line 1859
    :cond_5
    iget v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f:I

    if-eq v0, v6, :cond_6

    .line 1860
    new-array v0, v4, [I

    .line 1861
    iget v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f:I

    aput v1, v0, v3

    .line 1862
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1863
    iput v6, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f:I

    .line 1866
    :cond_6
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_7

    .line 1867
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1868
    iput-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e:Landroid/graphics/SurfaceTexture;

    .line 1869
    iput-boolean v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->n:Z

    .line 1872
    :cond_7
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-object v0, v0, LGeneralFunction/Player/player/h;->z:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1874
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    .line 1877
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->t:LGeneralFunction/Player/a/e;

    if-eqz v0, :cond_8

    .line 1879
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->t:LGeneralFunction/Player/a/e;

    invoke-virtual {v0}, LGeneralFunction/Player/a/e;->a()V

    .line 1880
    iput-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->t:LGeneralFunction/Player/a/e;

    .line 1884
    :cond_8
    if-nez p1, :cond_9

    .line 1886
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 1887
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    const/4 v1, 0x5

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;I)V

    .line 1889
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v4}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 1890
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, v4}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;I)V

    .line 1892
    :cond_9
    const-string v0, "finish_surfaceDestroy"

    invoke-static {v0, v5}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1898
    :goto_2
    return-void

    .line 1806
    :catch_0
    move-exception v0

    .line 1807
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1819
    :cond_a
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    if-eqz v0, :cond_b

    .line 1821
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->d()V

    .line 1824
    :cond_b
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_2

    .line 1829
    const-wide/16 v0, 0x1e

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1833
    :goto_3
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-boolean v0, v0, LGeneralFunction/Player/player/h;->n:Z

    if-eqz v0, :cond_c

    .line 1834
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 1836
    :cond_c
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto/16 :goto_1

    .line 1830
    :catch_1
    move-exception v0

    .line 1831
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 1896
    :cond_d
    const-string v0, "surfaceDestroy_fail"

    invoke-static {v0, v5}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private a([FFFF)V
    .locals 8

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    .line 1711
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f()F

    move-result v3

    .line 1714
    add-float v1, p3, p2

    const/high16 v2, 0x42c80000    # 100.0f

    add-float v5, v1, v2

    .line 1716
    cmpg-float v1, p3, p2

    if-gtz v1, :cond_0

    move v4, v0

    .line 1725
    :goto_0
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->o:I

    iget-object v2, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->p:I

    if-le v1, v2, :cond_1

    .line 1727
    div-float v0, p4, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    float-to-double v6, v3

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v2, v0

    .line 1730
    :goto_1
    const/4 v1, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 1731
    return-void

    .line 1722
    :cond_0
    mul-float v1, p2, p2

    div-float/2addr v1, p3

    sub-float v1, p3, v1

    add-float v4, v1, v0

    goto :goto_0

    :cond_1
    move v2, p4

    goto :goto_1
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1470
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1471
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1472
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1473
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1474
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Landroid/os/Message;)I

    .line 1475
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/e;->b(Z)V

    .line 1477
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->e(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/e;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/e;->b()V

    .line 1479
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v4}, LGeneralFunction/Player/player/SphericalVideoPlayer;->seekTo(I)V

    .line 1480
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->i(LGeneralFunction/Player/player/SphericalVideoPlayer;)V

    .line 1481
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-boolean v0, v0, LGeneralFunction/Player/player/h;->n:Z

    if-eqz v0, :cond_3

    .line 1483
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->j(LGeneralFunction/Player/player/SphericalVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1485
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v3, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    .line 1503
    :cond_1
    :goto_0
    return-void

    .line 1489
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v2, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 1494
    :cond_3
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentPosition()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1496
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v4}, LGeneralFunction/Player/player/SphericalVideoPlayer;->seekTo(I)V

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "twice_getCurrentPosition()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1499
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1389
    if-ne p1, v2, :cond_0

    .line 1391
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, LGeneralFunction/Player/player/h;->b(IZ)V

    .line 1405
    :goto_0
    return-void

    .line 1396
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->p:I

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->o:I

    if-le v0, v1, :cond_1

    .line 1398
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LGeneralFunction/Player/player/h;->b(IZ)V

    goto :goto_0

    .line 1402
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, LGeneralFunction/Player/player/h;->b(IZ)V

    goto :goto_0
.end method

.method static synthetic b(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d()V

    return-void
.end method

.method static synthetic b(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(I)V

    return-void
.end method

.method static synthetic b(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)Z
    .locals 0

    .prologue
    .line 1121
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->q:Z

    return p1
.end method

.method static synthetic c(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)I
    .locals 0

    .prologue
    .line 1121
    iput p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->h:I

    return p1
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1575
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->k:[F

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 1576
    return-void
.end method

.method static synthetic c(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->h()V

    return-void
.end method

.method static synthetic c(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)Z
    .locals 0

    .prologue
    .line 1121
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->n:Z

    return p1
.end method

.method static synthetic d(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)I
    .locals 0

    .prologue
    .line 1121
    iput p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->i:I

    return p1
.end method

.method private d()V
    .locals 19

    .prologue
    .line 1579
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    invoke-virtual {v1}, LGeneralFunction/Player/a/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    invoke-virtual {v1}, LGeneralFunction/Player/a/a;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1689
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1585
    move-object/from16 v0, p0

    iget-boolean v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->s:Z

    if-eqz v1, :cond_8

    .line 1588
    move-object/from16 v0, p0

    iget-boolean v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->n:Z

    if-eqz v1, :cond_0

    .line 1593
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->s:Z

    .line 1602
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1603
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    invoke-virtual {v1}, LGeneralFunction/Player/a/a;->c()V

    .line 1607
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->m:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 1608
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 1610
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 1611
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e:Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->j:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 1619
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->m:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1620
    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    move-object/from16 v0, p0

    iput-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->j:[F

    .line 1626
    :cond_4
    invoke-direct/range {p0 .. p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->g()V

    .line 1629
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->b:I

    if-nez v1, :cond_9

    .line 1631
    move-object/from16 v0, p0

    iget v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->h:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->i:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->o:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->p:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float v12, v1, v2

    .line 1638
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->u:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->u:I

    .line 1639
    move-object/from16 v0, p0

    iget v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->u:I

    rem-int/lit8 v1, v1, 0x78

    const/16 v2, 0x77

    if-ne v1, v2, :cond_5

    .line 1640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PLAYER]onDrawFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->o(LGeneralFunction/Player/player/SphericalVideoPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1642
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v1, v1, LGeneralFunction/Player/player/h;->z:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->s:I

    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->s:I

    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 1645
    :cond_6
    const/4 v2, 0x0

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1646
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->q:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1652
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->t:LGeneralFunction/Player/a/e;

    move-object/from16 v0, p0

    iget v3, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f:I

    move-object/from16 v0, p0

    iget-object v4, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->j:[F

    move-object/from16 v0, p0

    iget-object v5, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->k:[F

    move-object/from16 v0, p0

    iget-object v6, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->l:[F

    move-object/from16 v0, p0

    iget-object v7, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->m:[F

    move-object/from16 v0, p0

    iget-object v8, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 1659
    invoke-static {v8}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v8

    iget v9, v8, LGeneralFunction/Player/player/h;->a:I

    move-object/from16 v0, p0

    iget-object v8, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 1660
    invoke-static {v8}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v8

    iget v10, v8, LGeneralFunction/Player/player/h;->m:I

    move-object/from16 v0, p0

    iget-object v8, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 1661
    invoke-static {v8}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v8

    iget v11, v8, LGeneralFunction/Player/player/h;->s:I

    move-object/from16 v0, p0

    iget-object v8, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 1663
    invoke-static {v8}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v8

    iget v13, v8, LGeneralFunction/Player/player/h;->b:I

    move-object/from16 v0, p0

    iget-object v8, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 1664
    invoke-static {v8}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v8

    iget v14, v8, LGeneralFunction/Player/player/h;->o:I

    move-object/from16 v0, p0

    iget-object v8, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 1665
    invoke-static {v8}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v8

    iget v15, v8, LGeneralFunction/Player/player/h;->p:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->o:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->g:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->q:Z

    move/from16 v18, v0

    move-object v8, v1

    .line 1652
    invoke-virtual/range {v2 .. v18}, LGeneralFunction/Player/a/e;->a(I[F[F[F[F[FIIIFIIIZIZ)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    invoke-virtual {v1}, LGeneralFunction/Player/a/a;->b()V

    .line 1681
    move-object/from16 v0, p0

    iget-boolean v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->n:Z

    if-eqz v1, :cond_7

    .line 1682
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->n:Z

    .line 1685
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-boolean v1, v1, LGeneralFunction/Player/player/h;->y:Z

    if-eqz v1, :cond_0

    .line 1686
    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, LGeneralFunction/Player/player/h;->y:Z

    goto/16 :goto_0

    .line 1598
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->n:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-boolean v1, v1, LGeneralFunction/Player/player/h;->y:Z

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 1635
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->h:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->i:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->o:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->p:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float v12, v1, v2

    goto/16 :goto_1

    .line 1649
    :cond_a
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/16 :goto_2

    .line 1620
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic d(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->j()V

    return-void
.end method

.method static synthetic d(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)Z
    .locals 0

    .prologue
    .line 1121
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->o:Z

    return p1
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1691
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/h;->b(F)V

    .line 1692
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput v1, v0, LGeneralFunction/Player/player/h;->q:F

    .line 1693
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/h;->c()V

    .line 1694
    return-void
.end method

.method static synthetic e(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e()V

    return-void
.end method

.method static synthetic e(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->b(I)V

    return-void
.end method

.method static synthetic e(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)Z
    .locals 0

    .prologue
    .line 1121
    iput-boolean p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->s:Z

    return p1
.end method

.method private f()F
    .locals 2

    .prologue
    .line 1698
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->b:I

    if-nez v0, :cond_0

    .line 1700
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->o:I

    int-to-float v0, v0

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1706
    :goto_0
    return v0

    .line 1704
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->o:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic f(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->i()V

    return-void
.end method

.method private g()V
    .locals 15

    .prologue
    const/4 v10, 0x3

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 1734
    new-array v4, v10, [F

    .line 1735
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v2, v0, LGeneralFunction/Player/player/h;->l:F

    .line 1736
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->e:F

    .line 1737
    iget-object v3, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->q:F

    .line 1738
    iget-object v5, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v5}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v5

    iget v5, v5, LGeneralFunction/Player/player/h;->r:F

    .line 1740
    iget-object v6, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->m:[F

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-direct {p0, v6, v7, v2, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a([FFFF)V

    .line 1742
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v0, v5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 1745
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    if-ne v0, v12, :cond_0

    .line 1748
    const/high16 v0, 0x42b40000    # 90.0f

    add-float/2addr v0, v3

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 1759
    :goto_0
    float-to-double v6, v2

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    aput v3, v4, v1

    .line 1760
    float-to-double v6, v2

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    aput v3, v4, v12

    .line 1761
    float-to-double v6, v2

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    aput v3, v4, v13

    .line 1763
    new-array v7, v10, [F

    .line 1764
    sub-float v3, v2, v14

    float-to-double v8, v3

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v3, v8

    aput v3, v7, v1

    .line 1765
    sub-float v3, v2, v14

    float-to-double v8, v3

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v3, v8

    aput v3, v7, v12

    .line 1766
    sub-float/2addr v2, v14

    float-to-double v2, v2

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v0, v2

    aput v0, v7, v13

    .line 1768
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->l:[F

    aget v2, v4, v1

    aget v3, v4, v12

    aget v4, v4, v13

    aget v5, v7, v1

    aget v6, v7, v12

    aget v7, v7, v13

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 1774
    return-void

    .line 1751
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    if-ne v0, v10, :cond_1

    .line 1753
    const-wide v6, 0x4056800000000000L    # 90.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v0, v6

    goto/16 :goto_0

    .line 1756
    :cond_1
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v0, v6

    goto/16 :goto_0
.end method

.method static synthetic g(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->b()V

    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 1777
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->n:Z

    .line 1778
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 1909
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1910
    const-string v0, "glClear"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 1911
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->b()V

    .line 1912
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/h;->d()V

    .line 1934
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->p:Z

    .line 1935
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)I
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1191
    const/4 v0, -0x1

    .line 1194
    :goto_0
    return v0

    .line 1193
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 1214
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 1216
    new-instance v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;

    invoke-virtual {p0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Landroid/os/Looper;)V

    iput-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->b:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    monitor-exit p0

    return-void

    .line 1214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
