.class public LGeneralFunction/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, LGeneralFunction/j;->a:Ljava/util/concurrent/Semaphore;

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 17
    :try_start_0
    iget-object v0, p0, LGeneralFunction/j;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 20
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, LGeneralFunction/j;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 28
    return-void
.end method
