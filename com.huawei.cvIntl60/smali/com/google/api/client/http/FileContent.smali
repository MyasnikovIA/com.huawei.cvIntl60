.class public final Lcom/google/api/client/http/FileContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "SourceFile"


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/api/client/http/FileContent;->file:Ljava/io/File;

    .line 59
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/client/http/FileContent;->file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/FileContent;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/client/http/FileContent;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public retrySupported()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/FileContent;->setCloseInputStream(Z)Lcom/google/api/client/http/FileContent;

    move-result-object v0

    return-object v0
.end method

.method public setCloseInputStream(Z)Lcom/google/api/client/http/FileContent;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/FileContent;

    return-object v0
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/FileContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/FileContent;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/FileContent;
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/FileContent;

    return-object v0
.end method
