.class Lcom/google/android/exoplayer/SingleSampleSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/SingleSampleSource;->notifyLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/SingleSampleSource;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/SingleSampleSource;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/exoplayer/SingleSampleSource$1;->this$0:Lcom/google/android/exoplayer/SingleSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/SingleSampleSource$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource$1;->this$0:Lcom/google/android/exoplayer/SingleSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/SingleSampleSource;->access$100(Lcom/google/android/exoplayer/SingleSampleSource;)Lcom/google/android/exoplayer/SingleSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource$1;->this$0:Lcom/google/android/exoplayer/SingleSampleSource;

    invoke-static {v1}, Lcom/google/android/exoplayer/SingleSampleSource;->access$000(Lcom/google/android/exoplayer/SingleSampleSource;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/SingleSampleSource$1;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/SingleSampleSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    .line 294
    return-void
.end method
