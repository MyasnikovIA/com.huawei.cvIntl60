.class public LGeneralFunction/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:LGeneralFunction/n;


# instance fields
.field private a:Landroid/media/SoundPool$Builder;

.field private b:Landroid/media/AudioAttributes$Builder;

.field private c:I

.field private d:Landroid/media/SoundPool;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, LGeneralFunction/n;->h:LGeneralFunction/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v2, p0, LGeneralFunction/n;->a:Landroid/media/SoundPool$Builder;

    .line 17
    iput-object v2, p0, LGeneralFunction/n;->b:Landroid/media/AudioAttributes$Builder;

    .line 19
    const/4 v0, 0x1

    iput v0, p0, LGeneralFunction/n;->c:I

    .line 20
    iput-object v2, p0, LGeneralFunction/n;->d:Landroid/media/SoundPool;

    .line 21
    iput v1, p0, LGeneralFunction/n;->e:I

    .line 22
    iput v1, p0, LGeneralFunction/n;->f:I

    .line 23
    iput v1, p0, LGeneralFunction/n;->g:I

    .line 28
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    iput-object v0, p0, LGeneralFunction/n;->a:Landroid/media/SoundPool$Builder;

    .line 29
    iget-object v0, p0, LGeneralFunction/n;->a:Landroid/media/SoundPool$Builder;

    iget v1, p0, LGeneralFunction/n;->c:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 30
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iput-object v0, p0, LGeneralFunction/n;->b:Landroid/media/AudioAttributes$Builder;

    .line 31
    iget-object v0, p0, LGeneralFunction/n;->b:Landroid/media/AudioAttributes$Builder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 32
    iget-object v0, p0, LGeneralFunction/n;->a:Landroid/media/SoundPool$Builder;

    iget-object v1, p0, LGeneralFunction/n;->b:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 33
    iget-object v0, p0, LGeneralFunction/n;->a:Landroid/media/SoundPool$Builder;

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/n;->d:Landroid/media/SoundPool;

    .line 34
    return-void
.end method

.method public static declared-synchronized a()LGeneralFunction/n;
    .locals 2

    .prologue
    .line 38
    const-class v1, LGeneralFunction/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, LGeneralFunction/n;->h:LGeneralFunction/n;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, LGeneralFunction/n;

    invoke-direct {v0}, LGeneralFunction/n;-><init>()V

    sput-object v0, LGeneralFunction/n;->h:LGeneralFunction/n;

    .line 43
    :cond_0
    sget-object v0, LGeneralFunction/n;->h:LGeneralFunction/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, LGeneralFunction/n;->d:Landroid/media/SoundPool;

    const v1, 0x7f090027

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, LGeneralFunction/n;->e:I

    .line 49
    iget-object v0, p0, LGeneralFunction/n;->d:Landroid/media/SoundPool;

    const v1, 0x7f090028

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, LGeneralFunction/n;->f:I

    .line 50
    iget-object v0, p0, LGeneralFunction/n;->d:Landroid/media/SoundPool;

    const v1, 0x7f090026

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, LGeneralFunction/n;->g:I

    .line 51
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    iget-object v0, p0, LGeneralFunction/n;->d:Landroid/media/SoundPool;

    iget v1, p0, LGeneralFunction/n;->e:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 57
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 61
    iget-object v0, p0, LGeneralFunction/n;->d:Landroid/media/SoundPool;

    iget v1, p0, LGeneralFunction/n;->f:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 63
    return-void
.end method

.method public d()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 67
    iget-object v0, p0, LGeneralFunction/n;->d:Landroid/media/SoundPool;

    iget v1, p0, LGeneralFunction/n;->g:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 68
    return-void
.end method
