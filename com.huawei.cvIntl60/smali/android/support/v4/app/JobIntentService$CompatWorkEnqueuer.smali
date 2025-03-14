.class final Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;
.super Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatWorkEnqueuer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

.field mLaunchingService:Z

.field private final mRunWakeLock:Landroid/os/PowerManager$WakeLock;

.field mServiceProcessing:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    .line 168
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":launch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 174
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 175
    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 180
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 186
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 195
    :cond_0
    monitor-exit p0

    .line 197
    :cond_1
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceProcessingFinished()V
    .locals 4

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-eqz v0, :cond_1

    .line 228
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 231
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    .line 232
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 234
    :cond_1
    monitor-exit p0

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceProcessingStarted()V
    .locals 4

    .prologue
    .line 210
    monitor-enter p0

    .line 212
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    .line 216
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 217
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 219
    :cond_0
    monitor-exit p0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceStartReceived()V
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    .line 204
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 205
    monitor-exit p0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
