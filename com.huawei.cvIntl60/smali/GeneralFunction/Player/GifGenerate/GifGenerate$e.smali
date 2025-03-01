.class LGeneralFunction/Player/GifGenerate/GifGenerate$e;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/GifGenerate/GifGenerate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/Player/GifGenerate/GifGenerate$e$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:LGeneralFunction/Player/GifGenerate/a;

.field a:I

.field final synthetic b:LGeneralFunction/Player/GifGenerate/GifGenerate;

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:Landroid/view/Choreographer$FrameCallback;

.field private f:LGeneralFunction/Player/a/a;

.field private g:Landroid/graphics/SurfaceTexture;

.field private h:I

.field private i:I

.field private j:I

.field private k:[F

.field private l:[F

.field private m:[F

.field private n:[F

.field private o:[F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(LGeneralFunction/Player/GifGenerate/GifGenerate;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x168

    const/4 v3, 0x1

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 882
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    .line 883
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 816
    iput v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->c:I

    .line 819
    new-instance v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$a;

    invoke-direct {v0, p0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate$e$a;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate$e;LGeneralFunction/Player/GifGenerate/GifGenerate$1;)V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->e:Landroid/view/Choreographer$FrameCallback;

    .line 823
    const/4 v0, -0x1

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h:I

    .line 825
    iput v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->i:I

    .line 826
    iput v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->j:I

    .line 828
    new-array v0, v2, [F

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->k:[F

    .line 829
    new-array v0, v2, [F

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->l:[F

    .line 830
    new-array v0, v2, [F

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->m:[F

    .line 831
    new-array v0, v2, [F

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->n:[F

    .line 832
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    .line 834
    iput-boolean v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->p:Z

    .line 835
    iput-boolean v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->q:Z

    .line 838
    iput-boolean v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->t:Z

    .line 839
    iput v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->u:I

    .line 840
    iput v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->v:I

    .line 841
    iput v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->w:I

    .line 843
    iput-object v5, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->x:Ljava/lang/String;

    .line 844
    iput v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->y:I

    .line 850
    iput v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->z:I

    .line 851
    iput v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    .line 852
    iput v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->B:I

    .line 854
    const/16 v0, 0x258

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->D:I

    .line 855
    const/16 v0, 0x12c

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->E:I

    .line 857
    const/16 v0, 0xd4

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->F:I

    .line 858
    const/16 v0, 0x1e

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->G:I

    .line 1536
    iput v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a:I

    .line 884
    new-instance v0, LGeneralFunction/Player/a/a;

    invoke-direct {v0}, LGeneralFunction/Player/a/a;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    .line 885
    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I
    .locals 0

    .prologue
    .line 789
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    return p1
.end method

.method private a()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 1132
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get video decode surface without GL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(I)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h:I

    .line 1137
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g:Landroid/graphics/SurfaceTexture;

    .line 1139
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g:Landroid/graphics/SurfaceTexture;

    new-instance v1, LGeneralFunction/Player/GifGenerate/GifGenerate$e$2;

    invoke-direct {v1, p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e$2;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1148
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 789
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->x:Ljava/lang/String;

    return-object p1
.end method

.method private a(FZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1917
    const/high16 v0, 0x42480000    # 50.0f

    .line 1919
    if-eqz p2, :cond_0

    .line 1921
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/h;->b()V

    .line 1932
    :goto_0
    iput-boolean v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    .line 1933
    return-void

    .line 1925
    :cond_0
    float-to-int v1, p1

    if-ne v1, v3, :cond_1

    .line 1927
    neg-float v0, v0

    .line 1929
    :cond_1
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->l:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, LGeneralFunction/Player/player/h;->a(F)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 1103
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->p:I

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->o:I

    if-le v0, v1, :cond_0

    .line 1105
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LGeneralFunction/Player/player/h;->a(IZ)V

    .line 1111
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LGeneralFunction/Player/player/h;->a(IZ)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1616
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->t:Z

    if-nez v0, :cond_5

    .line 1619
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1620
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1627
    :goto_0
    if-eqz v0, :cond_5

    .line 1629
    iget v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->D:I

    iget v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->E:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1632
    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1635
    const-wide/16 v2, 0x28

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1642
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1644
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    :cond_1
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1650
    const-wide/16 v4, 0x28

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1655
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1656
    if-eq v1, v2, :cond_3

    .line 1657
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1660
    :cond_3
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1663
    const-wide/16 v0, 0x28

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1668
    :cond_4
    :goto_3
    const-string v0, "++++Finish++++++"

    invoke-static {v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1671
    :cond_5
    const-string v0, "++++Finish++++++"

    invoke-static {v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1672
    return-void

    .line 1624
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1636
    :catch_0
    move-exception v2

    .line 1637
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1651
    :catch_1
    move-exception v3

    .line 1652
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1664
    :catch_2
    move-exception v0

    .line 1665
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;FZ)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1, p2}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(FZ)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;LGeneralFunction/Player/GifGenerate/GifGenerate$f;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$f;)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1, p2, p3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Z)V

    return-void
.end method

.method private a(LGeneralFunction/Player/GifGenerate/GifGenerate$f;)V
    .locals 4

    .prologue
    const v3, 0x3dcccccd    # 0.1f

    .line 1911
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v1, p1, LGeneralFunction/Player/GifGenerate/GifGenerate$f;->a:F

    neg-float v1, v1

    mul-float/2addr v1, v3

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->q:F

    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    iput v1, v0, LGeneralFunction/Player/player/h;->q:F

    .line 1912
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v1, p1, LGeneralFunction/Player/GifGenerate/GifGenerate$f;->b:F

    neg-float v1, v1

    mul-float/2addr v1, v3

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->r:F

    add-float/2addr v1, v2

    iput v1, v0, LGeneralFunction/Player/player/h;->r:F

    .line 1913
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    .line 1914
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/16 v3, 0xde1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1115
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->i:I

    .line 1116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->j:I

    .line 1118
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    invoke-static {v3, v1, p1, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1128
    :goto_0
    iput-boolean v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    .line 1129
    return-void

    .line 1125
    :cond_0
    const-string v0, "updateBitmap with recycle bitmap!"

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/SurfaceTexture;II)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1153
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->q:Z

    if-nez v0, :cond_2

    .line 1155
    iput-boolean v6, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->q:Z

    .line 1156
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1158
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    invoke-virtual {v0, p1}, LGeneralFunction/Player/a/a;->a(Landroid/graphics/SurfaceTexture;)V

    .line 1160
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->e:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1162
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1163
    const-string v0, "glViewport"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h()V

    .line 1166
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->m:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1168
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->l:[F

    const/high16 v2, 0x42b40000    # 90.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 1170
    invoke-static {v4, v4, v4, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1172
    new-instance v0, LGeneralFunction/Player/GifGenerate/a;

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->m:I

    invoke-direct {v0, v2, v3}, LGeneralFunction/Player/GifGenerate/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->H:LGeneralFunction/Player/GifGenerate/a;

    .line 1174
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    packed-switch v0, :pswitch_data_0

    .line 1196
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    if-eq v0, v6, :cond_1

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    .line 1197
    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    if-nez v0, :cond_2

    .line 1199
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-object v0, v0, LGeneralFunction/Player/player/h;->z:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1202
    :cond_2
    return-void

    .line 1176
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-nez v0, :cond_3

    .line 1178
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->e(LGeneralFunction/Player/GifGenerate/GifGenerate;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;Ljava/lang/String;)V

    goto :goto_0

    .line 1182
    :cond_3
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->f(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    move-result-object v2

    invoke-direct {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1183
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v7}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 1184
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v7}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto :goto_0

    .line 1188
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(I)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h:I

    .line 1189
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->g(LGeneralFunction/Player/GifGenerate/GifGenerate;)V

    .line 1190
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->h(LGeneralFunction/Player/GifGenerate/GifGenerate;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->h(LGeneralFunction/Player/GifGenerate/GifGenerate;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;Ljava/lang/String;)V

    goto :goto_0

    .line 1174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Z)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1801
    const-string v0, "surfaceDestroy"

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1803
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->q:Z

    if-eqz v0, :cond_9

    .line 1805
    iput-boolean v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->q:Z

    .line 1806
    const-string v0, "start_surfaceDestroy"

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1807
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1808
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 1809
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput v2, v0, LGeneralFunction/Player/player/h;->m:I

    .line 1810
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1811
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->e:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1813
    if-nez p1, :cond_a

    .line 1815
    iput-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->d:Landroid/os/Handler;

    .line 1816
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    if-eqz v0, :cond_0

    .line 1818
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->k()V

    .line 1819
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->d()V

    .line 1820
    iput-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    .line 1822
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->f(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1824
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->f(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->quit()Z

    .line 1825
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;LGeneralFunction/Player/GifGenerate/GifGenerate$e;)LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    .line 1827
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput v2, v0, LGeneralFunction/Player/player/h;->a:I

    .line 1828
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_2

    .line 1832
    const-wide/16 v0, 0x1e

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    .line 1837
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    .line 1838
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iput-object v3, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 1840
    :cond_2
    iput-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    .line 1861
    :cond_3
    :goto_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->k(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1862
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->k(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$b;->a()V

    .line 1863
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->k(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$b;->interrupt()V

    .line 1864
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;LGeneralFunction/Player/GifGenerate/GifGenerate$b;)LGeneralFunction/Player/GifGenerate/GifGenerate$b;

    .line 1867
    :cond_4
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h:I

    if-eq v0, v6, :cond_5

    .line 1868
    new-array v0, v5, [I

    .line 1869
    iget v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h:I

    aput v1, v0, v2

    .line 1870
    invoke-static {v5, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1871
    iput v6, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h:I

    .line 1874
    :cond_5
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_6

    .line 1875
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1876
    iput-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g:Landroid/graphics/SurfaceTexture;

    .line 1877
    iput-boolean v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->r:Z

    .line 1880
    :cond_6
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-object v0, v0, LGeneralFunction/Player/player/h;->z:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1882
    iput-boolean v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    .line 1885
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->H:LGeneralFunction/Player/GifGenerate/a;

    if-eqz v0, :cond_7

    .line 1887
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->H:LGeneralFunction/Player/GifGenerate/a;

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/a;->a()V

    .line 1888
    iput-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->H:LGeneralFunction/Player/GifGenerate/a;

    .line 1891
    :cond_7
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->l(LGeneralFunction/Player/GifGenerate/GifGenerate;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1893
    if-nez p1, :cond_8

    .line 1895
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    const/4 v1, 0x5

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 1896
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    const/4 v1, 0x5

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 1898
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->a(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 1899
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 1901
    :cond_8
    const-string v0, "finish_surfaceDestroy"

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1903
    :cond_9
    return-void

    .line 1833
    :catch_0
    move-exception v0

    .line 1834
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1844
    :cond_a
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    if-eqz v0, :cond_b

    .line 1846
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->d()V

    .line 1848
    :cond_b
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_3

    .line 1853
    const-wide/16 v0, 0x1e

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1857
    :goto_2
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto/16 :goto_1

    .line 1854
    :catch_1
    move-exception v0

    .line 1855
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I
    .locals 0

    .prologue
    .line 789
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->c:I

    return p1
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1676
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->v:I

    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->d(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1678
    if-eqz v0, :cond_0

    .line 1680
    iget v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->F:I

    iget v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->G:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1681
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1682
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, p1, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1683
    const/high16 v3, 0x41200000    # 10.0f

    iget v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->E:I

    iget v5, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->E:I

    div-int/lit8 v5, v5, 0x7

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v1, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1684
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1685
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1686
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1687
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1692
    :goto_0
    return-object p1

    .line 1691
    :cond_0
    const-string v0, "No WarterMark"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private b()V
    .locals 13

    .prologue
    .line 1205
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->e:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1212
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->r:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    if-eqz v0, :cond_0

    .line 1216
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->c()V

    .line 1220
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 1221
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 1222
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->k:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 1225
    :cond_3
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1226
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->k:[F

    .line 1233
    :cond_4
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->i()V

    .line 1236
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-object v0, v0, LGeneralFunction/Player/player/h;->z:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1237
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->s:I

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->s:I

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 1239
    :cond_5
    const/4 v1, 0x0

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1240
    const/4 v1, 0x0

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->q:F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1246
    :goto_1
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->H:LGeneralFunction/Player/GifGenerate/a;

    iget v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h:I

    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->k:[F

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->l:[F

    iget-object v5, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->m:[F

    iget-object v6, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->n:[F

    iget-object v7, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    .line 1253
    invoke-static {v7}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v7

    iget v8, v7, LGeneralFunction/Player/player/h;->m:I

    iget-object v7, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    .line 1254
    invoke-static {v7}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v7

    iget v9, v7, LGeneralFunction/Player/player/h;->o:I

    iget-object v7, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    .line 1255
    invoke-static {v7}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v7

    iget v10, v7, LGeneralFunction/Player/player/h;->p:I

    iget v11, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->c:I

    iget-boolean v12, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->p:Z

    move-object v7, v0

    .line 1246
    invoke-virtual/range {v1 .. v12}, LGeneralFunction/Player/GifGenerate/a;->a(I[F[F[F[F[FIIIIZ)V

    .line 1261
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->r:Z

    if-eqz v0, :cond_a

    .line 1263
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 1265
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1267
    const-string v0, "add image"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1268
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 1269
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->o:I

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->p:I

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(II)V

    .line 1271
    :cond_6
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget v1, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->b:I

    .line 1273
    :cond_7
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->d()V

    .line 1275
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->r:Z

    .line 1288
    :goto_2
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->t:Z

    if-nez v0, :cond_0

    .line 1290
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->b()V

    goto/16 :goto_0

    .line 1243
    :cond_9
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/16 :goto_1

    .line 1279
    :cond_a
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->t:Z

    if-nez v0, :cond_b

    .line 1281
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1282
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->o:I

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->p:I

    invoke-direct {p0, v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(II)V

    .line 1285
    :cond_b
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->c()V

    goto :goto_2

    .line 1226
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

.method private b(I)V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 1476
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 1479
    const-wide/16 v2, 0xe6

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    :cond_0
    :goto_0
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    iget v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->B:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-eq v0, v9, :cond_2

    :cond_1
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    iget v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->B:I

    if-lt v0, v2, :cond_3

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    .line 1486
    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v12, :cond_3

    .line 1488
    :cond_2
    if-nez p1, :cond_4

    .line 1490
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->q:F

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    iput v2, v0, LGeneralFunction/Player/player/h;->q:F

    .line 1497
    :goto_1
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    .line 1500
    :cond_3
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h()V

    .line 1502
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    const/high16 v2, -0x3d560000    # -85.0f

    const/high16 v3, 0x42aa0000    # 85.0f

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->r:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, LGeneralFunction/Player/player/h;->r:F

    .line 1504
    const/high16 v0, 0x42b40000    # 90.0f

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->r:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1505
    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->q:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1508
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->l:F

    float-to-double v4, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v3, v1

    .line 1509
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->l:F

    float-to-double v4, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v3, v9

    .line 1510
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->l:F

    float-to-double v4, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v3, v12

    .line 1512
    const/4 v3, 0x3

    new-array v7, v3, [F

    .line 1513
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->j:F

    sub-float/2addr v3, v13

    float-to-double v4, v3

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    double-to-float v3, v4

    aput v3, v7, v1

    .line 1514
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->j:F

    sub-float/2addr v3, v13

    float-to-double v4, v3

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    double-to-float v3, v4

    aput v3, v7, v9

    .line 1515
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->j:F

    sub-float/2addr v3, v13

    float-to-double v4, v3

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v0, v2

    aput v0, v7, v12

    .line 1517
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->m:[F

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    aget v2, v2, v1

    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    aget v3, v3, v9

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    aget v4, v4, v12

    aget v5, v7, v1

    aget v6, v7, v9

    aget v7, v7, v12

    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 1523
    return-void

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1494
    :cond_4
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->q:F

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v2, v3

    iput v2, v0, LGeneralFunction/Player/player/h;->q:F

    goto/16 :goto_1
.end method

.method static synthetic b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b()V

    return-void
.end method

.method static synthetic b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z
    .locals 0

    .prologue
    .line 789
    iput-boolean p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    return p1
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1298
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    if-ne v0, v5, :cond_8

    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->t:Z

    if-nez v0, :cond_8

    .line 1302
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 1303
    :cond_0
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    iget v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->B:I

    if-le v0, v1, :cond_2

    .line 1304
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->u:I

    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(I)V

    .line 1369
    :cond_1
    :goto_0
    return-void

    .line 1307
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1309
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmapArrayList.size()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1312
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1314
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->x:Ljava/lang/String;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1317
    :cond_3
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f()V

    .line 1319
    :cond_4
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->z:I

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    .line 1320
    iput-boolean v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    .line 1321
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 1323
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1324
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto :goto_0

    .line 1328
    :cond_5
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-eq v0, v3, :cond_6

    .line 1330
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1331
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto :goto_0

    .line 1335
    :cond_6
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1337
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto :goto_0

    .line 1344
    :cond_7
    iput-boolean v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    goto :goto_0

    .line 1347
    :cond_8
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->t:Z

    if-ne v0, v3, :cond_a

    .line 1350
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1351
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_9

    .line 1353
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 1354
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->y:I

    invoke-virtual {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->seekTo(I)V

    .line 1356
    :cond_9
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->u:I

    invoke-direct {p0, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->c(I)V

    .line 1357
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f()V

    .line 1358
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->z:I

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    .line 1359
    iput-boolean v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->t:Z

    .line 1360
    iput-boolean v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    .line 1361
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 1362
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    goto/16 :goto_0

    .line 1366
    :cond_a
    iput-boolean v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    goto/16 :goto_0
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 1526
    if-nez p1, :cond_0

    .line 1528
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->q:F

    iget v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->z:I

    iget v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, LGeneralFunction/Player/player/h;->q:F

    .line 1535
    :goto_0
    return-void

    .line 1532
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->q:F

    iget v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->z:I

    iget v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, LGeneralFunction/Player/player/h;->q:F

    goto :goto_0
.end method

.method static synthetic c(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->j()V

    return-void
.end method

.method static synthetic c(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(I)V

    return-void
.end method

.method static synthetic c(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z
    .locals 0

    .prologue
    .line 789
    iput-boolean p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->p:Z

    return p1
.end method

.method static synthetic d(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->z:I

    return v0
.end method

.method static synthetic d(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I
    .locals 0

    .prologue
    .line 789
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->i:I

    return p1
.end method

.method private d(I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 1695
    const/4 v0, 0x0

    .line 1696
    packed-switch p1, :pswitch_data_0

    .line 1714
    :goto_0
    :pswitch_0
    return-object v0

    .line 1701
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->j(LGeneralFunction/Player/GifGenerate/GifGenerate;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020108

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1704
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->j(LGeneralFunction/Player/GifGenerate/GifGenerate;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1707
    :pswitch_3
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->j(LGeneralFunction/Player/GifGenerate/GifGenerate;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1710
    :pswitch_4
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->j(LGeneralFunction/Player/GifGenerate/GifGenerate;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020113

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1696
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1373
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    if-ne v0, v5, :cond_0

    .line 1375
    iget-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->t:Z

    if-nez v0, :cond_6

    .line 1377
    invoke-static {}, LGeneralFunction/Player/GifGenerate/GifGenerate;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v2, v2, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-static {}, LGeneralFunction/Player/GifGenerate/GifGenerate;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVideoEndTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->i(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-virtual {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->i(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1439
    :goto_0
    iput-boolean v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    .line 1442
    :cond_0
    return-void

    .line 1386
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1388
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1391
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1393
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->x:Ljava/lang/String;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1396
    :cond_2
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f()V

    .line 1398
    :cond_3
    iput-boolean v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    .line 1399
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 1400
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->y:I

    invoke-virtual {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->seekTo(I)V

    .line 1401
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->z:I

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    .line 1402
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 1404
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1405
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto :goto_0

    .line 1409
    :cond_4
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-eq v0, v5, :cond_5

    .line 1411
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v7}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1412
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v7}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto :goto_0

    .line 1416
    :cond_5
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1418
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto :goto_0

    .line 1425
    :cond_6
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1426
    iput-boolean v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->s:Z

    .line 1427
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_7

    .line 1429
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 1430
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->y:I

    invoke-virtual {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->seekTo(I)V

    .line 1432
    :cond_7
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f()V

    .line 1433
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->z:I

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->A:I

    .line 1434
    iput-boolean v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->t:Z

    .line 1435
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 1436
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    goto/16 :goto_0
.end method

.method static synthetic d(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z
    .locals 0

    .prologue
    .line 789
    iput-boolean p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->t:Z

    return p1
.end method

.method static synthetic e(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->u:I

    return v0
.end method

.method static synthetic e(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I
    .locals 0

    .prologue
    .line 789
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->j:I

    return p1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 1593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    .line 1594
    return-void
.end method

.method static synthetic e(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z
    .locals 0

    .prologue
    .line 789
    iput-boolean p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->r:Z

    return p1
.end method

.method static synthetic f(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I
    .locals 0

    .prologue
    .line 789
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->u:I

    return p1
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1597
    const-string v0, "imageListClean"

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1598
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1600
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 1602
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1604
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1605
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1602
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1607
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1609
    :cond_1
    const-string v0, "imageListCleaEnd"

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1612
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iput v2, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->b:I

    .line 1613
    return-void
.end method

.method static synthetic f(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->e()V

    return-void
.end method

.method private g()F
    .locals 2

    .prologue
    .line 1720
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->b:I

    if-nez v0, :cond_0

    .line 1722
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->o:I

    int-to-float v0, v0

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1728
    :goto_0
    return v0

    .line 1726
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->o:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic g(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->w:I

    return v0
.end method

.method static synthetic g(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I
    .locals 0

    .prologue
    .line 789
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->v:I

    return p1
.end method

.method static synthetic h(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->C:Ljava/util/ArrayList;

    return-object v0
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    .line 1732
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g()F

    move-result v3

    .line 1733
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->a:I

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    .line 1735
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->a:I

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    .line 1736
    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->a:I

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 1738
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->l:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 1739
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->n:[F

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->f:F

    iget-object v5, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v5

    iget v5, v5, LGeneralFunction/Player/player/h;->c:F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 1756
    :goto_0
    return-void

    .line 1741
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->n:[F

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->f:F

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->l:F

    const/high16 v5, 0x43960000    # 300.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v5

    iget v5, v5, LGeneralFunction/Player/player/h;->c:F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    goto :goto_0

    .line 1746
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->l:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_3

    .line 1747
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->n:[F

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->f:F

    iget-object v5, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v5

    iget v5, v5, LGeneralFunction/Player/player/h;->c:F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    goto :goto_0

    .line 1749
    :cond_3
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->n:[F

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->f:F

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->l:F

    iget-object v5, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v5

    iget v5, v5, LGeneralFunction/Player/player/h;->c:F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    goto :goto_0

    .line 1754
    :cond_4
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->n:[F

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->f:F

    iget-object v5, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v5

    iget v5, v5, LGeneralFunction/Player/player/h;->c:F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    goto :goto_0
.end method

.method static synthetic h(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(I)V

    return-void
.end method

.method static synthetic i(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I
    .locals 0

    .prologue
    .line 789
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->y:I

    return p1
.end method

.method static synthetic i(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->x:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1759
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h()V

    .line 1761
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    const/high16 v2, -0x3d560000    # -85.0f

    const/high16 v3, 0x42aa0000    # 85.0f

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->r:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, LGeneralFunction/Player/player/h;->r:F

    .line 1763
    const/high16 v0, 0x42b40000    # 90.0f

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget v2, v2, LGeneralFunction/Player/player/h;->r:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1765
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    if-ne v0, v9, :cond_0

    .line 1768
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->q:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 1779
    :goto_0
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->l:F

    float-to-double v4, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v3, v1

    .line 1780
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->l:F

    float-to-double v4, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v3, v9

    .line 1781
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v4

    iget v4, v4, LGeneralFunction/Player/player/h;->l:F

    float-to-double v4, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v3, v12

    .line 1783
    const/4 v3, 0x3

    new-array v7, v3, [F

    .line 1784
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->j:F

    sub-float/2addr v3, v13

    float-to-double v4, v3

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    double-to-float v3, v4

    aput v3, v7, v1

    .line 1785
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->j:F

    sub-float/2addr v3, v13

    float-to-double v4, v3

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    double-to-float v3, v4

    aput v3, v7, v9

    .line 1786
    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v3}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->j:F

    sub-float/2addr v3, v13

    float-to-double v4, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    aput v0, v7, v12

    .line 1788
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->m:[F

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    aget v2, v2, v1

    iget-object v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    aget v3, v3, v9

    iget-object v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->o:[F

    aget v4, v4, v12

    aget v5, v7, v1

    aget v6, v7, v9

    aget v7, v7, v12

    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 1794
    return-void

    .line 1771
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 1773
    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v0, v4

    goto/16 :goto_0

    .line 1776
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->q:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v0, v4

    goto/16 :goto_0
.end method

.method static synthetic j(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I
    .locals 0

    .prologue
    .line 789
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->D:I

    return p1
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1797
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->r:Z

    .line 1798
    return-void
.end method

.method static synthetic j(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f()V

    return-void
.end method

.method static synthetic k(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->y:I

    return v0
.end method

.method static synthetic k(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I
    .locals 0

    .prologue
    .line 789
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->E:I

    return p1
.end method

.method private k()V
    .locals 1

    .prologue
    .line 1906
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1907
    const-string v0, "glClear"

    invoke-static {v0}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 1908
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f:LGeneralFunction/Player/a/a;

    invoke-virtual {v0}, LGeneralFunction/Player/a/a;->b()V

    .line 1909
    return-void
.end method

.method static synthetic l(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I
    .locals 0

    .prologue
    .line 789
    iput p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->w:I

    return p1
.end method


# virtual methods
.method public a(Landroid/os/Message;)I
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 866
    const/4 v0, -0x1

    .line 869
    :goto_0
    return v0

    .line 868
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 869
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1444
    const/4 v2, 0x0

    .line 1447
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1448
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    :try_start_1
    invoke-virtual {p0, p2}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 1450
    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1460
    :cond_0
    if-eqz v1, :cond_1

    .line 1462
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1469
    :cond_1
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1472
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->j(LGeneralFunction/Player/GifGenerate/GifGenerate;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1474
    :cond_2
    return-void

    .line 1463
    :catch_0
    move-exception v0

    .line 1464
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1455
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1456
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1460
    if-eqz v1, :cond_1

    .line 1462
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1463
    :catch_2
    move-exception v0

    .line 1464
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1460
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    .line 1462
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1465
    :cond_3
    :goto_3
    throw v0

    .line 1463
    :catch_3
    move-exception v1

    .line 1464
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1460
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 1455
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/util/ArrayList;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 1539
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1540
    new-instance v7, Lcom/a/a/c/a;

    invoke-direct {v7}, Lcom/a/a/c/a;-><init>()V

    .line 1541
    iput v10, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a:I

    .line 1542
    invoke-virtual {v7, v10}, Lcom/a/a/c/a;->b(I)V

    .line 1543
    const/16 v0, 0x12

    invoke-virtual {v7, v0}, Lcom/a/a/c/a;->c(I)V

    .line 1547
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->v:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1549
    :cond_0
    const/4 v0, 0x6

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 1553
    new-array v9, v12, [Lcom/a/a/c/d;

    new-instance v0, Lcom/a/a/c/d;

    const/high16 v1, 0x41200000    # 10.0f

    const/16 v2, 0xa

    iget v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->E:I

    iget v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->E:I

    div-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, -0xa

    sub-int/2addr v3, v4

    iget v4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->F:I

    add-int/lit8 v4, v4, -0x14

    iget v5, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->G:I

    invoke-direct/range {v0 .. v5}, Lcom/a/a/c/d;-><init>(FIIII)V

    aput-object v0, v9, v10

    .line 1554
    invoke-virtual {v7, v8}, Lcom/a/a/c/a;->a([I)V

    .line 1555
    invoke-virtual {v7, v9}, Lcom/a/a/c/a;->a([Lcom/a/a/c/d;)V

    .line 1558
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    if-ne v0, v11, :cond_3

    .line 1560
    const/16 v0, 0xe6

    invoke-virtual {v7, v0}, Lcom/a/a/c/a;->a(I)V

    .line 1566
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmaps.size()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1568
    invoke-virtual {v7, v6}, Lcom/a/a/c/a;->a(Ljava/io/OutputStream;)Z

    .line 1569
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1571
    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v2

    if-eq v2, v12, :cond_4

    .line 1573
    if-eqz v0, :cond_2

    .line 1575
    invoke-virtual {v7, v0}, Lcom/a/a/c/a;->a(Landroid/graphics/Bitmap;)Z

    .line 1576
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1585
    :cond_2
    iget v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a:I

    goto :goto_1

    .line 1564
    :cond_3
    const/16 v0, 0x64

    invoke-virtual {v7, v0}, Lcom/a/a/c/a;->a(I)V

    goto :goto_0

    .line 1581
    :cond_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1582
    invoke-virtual {v7}, Lcom/a/a/c/a;->a()Z

    .line 1583
    const/4 v0, 0x0

    .line 1588
    :goto_2
    return-object v0

    .line 1587
    :cond_5
    invoke-virtual {v7}, Lcom/a/a/c/a;->a()Z

    .line 1588
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_2

    .line 1549
    :array_0
    .array-data 4
        0xff
        0xff
        0xff
        0xfe
        0xfe
        0xfe
    .end array-data
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 889
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 891
    new-instance v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;

    invoke-virtual {p0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Landroid/os/Looper;)V

    iput-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    monitor-exit p0

    return-void

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
