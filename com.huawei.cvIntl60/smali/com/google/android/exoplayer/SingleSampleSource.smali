.class public final Lcom/google/android/exoplayer/SingleSampleSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/SingleSampleSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final INITIAL_SAMPLE_SIZE:I = 0x1

.field private static final STATE_END_OF_STREAM:I = 0x2

.field private static final STATE_SEND_FORMAT:I = 0x0

.field private static final STATE_SEND_SAMPLE:I = 0x1


# instance fields
.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/SingleSampleSource$EventListener;

.field private final eventSourceId:I

.field private final format:Lcom/google/android/exoplayer/MediaFormat;

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuityPositionUs:J

.field private sampleData:[B

.field private sampleSize:I

.field private state:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/SingleSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;I)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 90
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/SingleSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;ILandroid/os/Handler;Lcom/google/android/exoplayer/SingleSampleSource$EventListener;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;ILandroid/os/Handler;Lcom/google/android/exoplayer/SingleSampleSource$EventListener;I)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->uri:Landroid/net/Uri;

    .line 97
    iput-object p2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 98
    iput-object p3, p0, Lcom/google/android/exoplayer/SingleSampleSource;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 99
    iput p4, p0, Lcom/google/android/exoplayer/SingleSampleSource;->minLoadableRetryCount:I

    .line 100
    iput-object p5, p0, Lcom/google/android/exoplayer/SingleSampleSource;->eventHandler:Landroid/os/Handler;

    .line 101
    iput-object p6, p0, Lcom/google/android/exoplayer/SingleSampleSource;->eventListener:Lcom/google/android/exoplayer/SingleSampleSource$EventListener;

    .line 102
    iput p7, p0, Lcom/google/android/exoplayer/SingleSampleSource;->eventSourceId:I

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/SingleSampleSource;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/SingleSampleSource;)Lcom/google/android/exoplayer/SingleSampleSource$EventListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->eventListener:Lcom/google/android/exoplayer/SingleSampleSource$EventListener;

    return-object v0
.end method

.method private clearCurrentLoadableException()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    .line 227
    return-void
.end method

.method private getRetryDelayMillis(J)J
    .locals 5

    .prologue
    .line 230
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybeStartLoading()V
    .locals 4

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loadingFinished:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long/2addr v0, v2

    .line 216
    iget v2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/SingleSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->eventListener:Lcom/google/android/exoplayer/SingleSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/SingleSampleSource$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/SingleSampleSource$1;-><init>(Lcom/google/android/exoplayer/SingleSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public continueBuffering(IJ)Z
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/exoplayer/SingleSampleSource;->maybeStartLoading()V

    .line 140
    iget-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loadingFinished:Z

    return v0
.end method

.method public disable(I)V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->state:I

    .line 198
    return-void
.end method

.method public enable(IJ)V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->state:I

    .line 132
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->pendingDiscontinuityPositionUs:J

    .line 133
    invoke-direct {p0}, Lcom/google/android/exoplayer/SingleSampleSource;->clearCurrentLoadableException()V

    .line 134
    invoke-direct {p0}, Lcom/google/android/exoplayer/SingleSampleSource;->maybeStartLoading()V

    .line 135
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->format:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 270
    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v3, p0, Lcom/google/android/exoplayer/SingleSampleSource;->uri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    .line 276
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 277
    iget v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    .line 278
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    iget v2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    iget-object v3, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    array-length v3, v3

    iget v4, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    sub-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    .line 286
    return-void

    .line 284
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    throw v0
.end method

.method public maybeThrowError()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    iget v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->minLoadableRetryCount:I

    if-le v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    .line 148
    :cond_0
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loadingFinished:Z

    .line 238
    invoke-direct {p0}, Lcom/google/android/exoplayer/SingleSampleSource;->clearCurrentLoadableException()V

    .line 239
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 248
    iput-object p2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 249
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionTimestamp:J

    .line 251
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/SingleSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    .line 252
    invoke-direct {p0}, Lcom/google/android/exoplayer/SingleSampleSource;->maybeStartLoading()V

    .line 253
    return-void
.end method

.method public prepare(J)Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v2, v2, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 116
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->state:I

    if-ne v0, v6, :cond_0

    .line 161
    const/4 v0, -0x1

    .line 178
    :goto_0
    return v0

    .line 162
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->state:I

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->format:Lcom/google/android/exoplayer/MediaFormat;

    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 164
    iput v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->state:I

    .line 165
    const/4 v0, -0x4

    goto :goto_0

    .line 168
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->state:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 169
    iget-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loadingFinished:Z

    if-nez v0, :cond_3

    .line 170
    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 168
    goto :goto_1

    .line 172
    :cond_3
    const-wide/16 v4, 0x0

    iput-wide v4, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 173
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    iput v0, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    .line 174
    iput v1, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 175
    iget v0, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-virtual {p5, v0}, Lcom/google/android/exoplayer/SampleHolder;->ensureSpaceForWrite(I)V

    .line 176
    iget-object v0, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    iget v3, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 177
    iput v6, p0, Lcom/google/android/exoplayer/SingleSampleSource;->state:I

    .line 178
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public readDiscontinuity(I)J
    .locals 4

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->pendingDiscontinuityPositionUs:J

    .line 153
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->pendingDiscontinuityPositionUs:J

    .line 154
    return-wide v0
.end method

.method public register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 0

    .prologue
    .line 108
    return-object p0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 206
    :cond_0
    return-void
.end method

.method public seekToUs(J)V
    .locals 3

    .prologue
    .line 184
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 185
    iput-wide p1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->pendingDiscontinuityPositionUs:J

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->state:I

    .line 188
    :cond_0
    return-void
.end method
