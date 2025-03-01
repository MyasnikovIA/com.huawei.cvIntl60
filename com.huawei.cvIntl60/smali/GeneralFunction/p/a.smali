.class public LGeneralFunction/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/media/MediaExtractor;Ljava/lang/String;)Landroid/media/MediaFormat;
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 12
    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object v0, v1

    .line 18
    :goto_1
    return-object v0

    .line 10
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
