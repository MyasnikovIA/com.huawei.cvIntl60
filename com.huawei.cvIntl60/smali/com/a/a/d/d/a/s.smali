.class public Lcom/a/a/d/d/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/a/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/k",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/a/a/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/i",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/a/a/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/i",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/a/a/d/d/a/s$a;


# instance fields
.field private final d:Lcom/a/a/d/b/a/e;

.field private final e:Lcom/a/a/d/d/a/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    const-string v0, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    const-wide/16 v2, -0x1

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/a/a/d/d/a/s$1;

    invoke-direct {v2}, Lcom/a/a/d/d/a/s$1;-><init>()V

    .line 41
    invoke-static {v0, v1, v2}, Lcom/a/a/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/a/a/d/i$a;)Lcom/a/a/d/i;

    move-result-object v0

    sput-object v0, Lcom/a/a/d/d/a/s;->a:Lcom/a/a/d/i;

    .line 63
    const-string v0, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    const/4 v1, 0x0

    new-instance v2, Lcom/a/a/d/d/a/s$2;

    invoke-direct {v2}, Lcom/a/a/d/d/a/s$2;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/a/a/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/a/a/d/i$a;)Lcom/a/a/d/i;

    move-result-object v0

    sput-object v0, Lcom/a/a/d/d/a/s;->b:Lcom/a/a/d/i;

    .line 82
    new-instance v0, Lcom/a/a/d/d/a/s$a;

    invoke-direct {v0}, Lcom/a/a/d/d/a/s$a;-><init>()V

    sput-object v0, Lcom/a/a/d/d/a/s;->c:Lcom/a/a/d/d/a/s$a;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/b/a/e;)V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/a/a/d/d/a/s;->c:Lcom/a/a/d/d/a/s$a;

    invoke-direct {p0, p1, v0}, Lcom/a/a/d/d/a/s;-><init>(Lcom/a/a/d/b/a/e;Lcom/a/a/d/d/a/s$a;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/a/a/d/b/a/e;Lcom/a/a/d/d/a/s$a;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/a/a/d/d/a/s;->d:Lcom/a/a/d/b/a/e;

    .line 99
    iput-object p2, p0, Lcom/a/a/d/d/a/s;->e:Lcom/a/a/d/d/a/s$a;

    .line 100
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/b/s",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 113
    sget-object v0, Lcom/a/a/d/d/a/s;->a:Lcom/a/a/d/i;

    invoke-virtual {p4, v0}, Lcom/a/a/d/j;->a(Lcom/a/a/d/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 114
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    sget-object v0, Lcom/a/a/d/d/a/s;->b:Lcom/a/a/d/i;

    invoke-virtual {p4, v0}, Lcom/a/a/d/j;->a(Lcom/a/a/d/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    iget-object v1, p0, Lcom/a/a/d/d/a/s;->e:Lcom/a/a/d/d/a/s$a;

    invoke-virtual {v1}, Lcom/a/a/d/d/a/s$a;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    .line 123
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 124
    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    .line 125
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 135
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 137
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 138
    iget-object v1, p0, Lcom/a/a/d/d/a/s;->d:Lcom/a/a/d/b/a/e;

    invoke-static {v0, v1}, Lcom/a/a/d/d/a/e;->a(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/e;)Lcom/a/a/d/d/a/e;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    if-nez v0, :cond_2

    .line 127
    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 133
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/d/d/a/s;->a(Landroid/os/ParcelFileDescriptor;IILcom/a/a/d/j;)Lcom/a/a/d/b/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/ParcelFileDescriptor;Lcom/a/a/d/j;)Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/a/a/d/j;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/d/d/a/s;->a(Landroid/os/ParcelFileDescriptor;Lcom/a/a/d/j;)Z

    move-result v0

    return v0
.end method
