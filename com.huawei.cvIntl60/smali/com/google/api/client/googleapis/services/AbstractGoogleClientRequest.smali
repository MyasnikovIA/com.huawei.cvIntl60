.class public abstract Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
.super Lcom/google/api/client/util/GenericData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/util/GenericData;"
    }
.end annotation


# static fields
.field public static final USER_AGENT_SUFFIX:Ljava/lang/String; = "Google-API-Java-Client"


# instance fields
.field private final abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

.field private disableGZipContent:Z

.field private downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

.field private final httpContent:Lcom/google/api/client/http/HttpContent;

.field private lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private lastStatusCode:I

.field private lastStatusMessage:Ljava/lang/String;

.field private requestHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private final requestMethod:Ljava/lang/String;

.field private responseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

.field private final uriTemplate:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpContent;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/HttpContent;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 75
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusCode:I

    .line 110
    invoke-static {p5}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->responseClass:Ljava/lang/Class;

    .line 111
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    .line 112
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    .line 113
    invoke-static {p3}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uriTemplate:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    .line 116
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Google-API-Java-Client"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    const-string v1, "Google-API-Java-Client"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    goto :goto_0
.end method

.method private buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 298
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 299
    if-eqz p1, :cond_6

    const-string v0, "HEAD"

    .line 300
    :goto_1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 302
    new-instance v1, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v1}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 303
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getObjectParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 305
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string v2, "PUT"

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string v2, "PATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    :cond_2
    new-instance v1, Lcom/google/api/client/http/EmptyContent;

    invoke-direct {v1}, Lcom/google/api/client/http/EmptyContent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 309
    :cond_3
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 310
    iget-boolean v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    if-nez v1, :cond_4

    .line 311
    new-instance v1, Lcom/google/api/client/http/GZipEncoding;

    invoke-direct {v1}, Lcom/google/api/client/http/GZipEncoding;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setEncoding(Lcom/google/api/client/http/HttpEncoding;)Lcom/google/api/client/http/HttpRequest;

    .line 313
    :cond_4
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getResponseInterceptor()Lcom/google/api/client/http/HttpResponseInterceptor;

    move-result-object v1

    .line 314
    new-instance v2, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$1;-><init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;Lcom/google/api/client/http/HttpResponseInterceptor;Lcom/google/api/client/http/HttpRequest;)V

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->setResponseInterceptor(Lcom/google/api/client/http/HttpResponseInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 325
    return-object v0

    :cond_5
    move v0, v2

    .line 297
    goto/16 :goto_0

    .line 299
    :cond_6
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    goto :goto_1
.end method

.method private executeUnparsed(Z)Lcom/google/api/client/http/HttpResponse;
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_1

    .line 419
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 436
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 437
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusCode:I

    .line 438
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusMessage:Ljava/lang/String;

    .line 439
    return-object v0

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getThrowExceptionOnExecuteError()Z

    move-result v1

    .line 427
    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v2, v3}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setInitiationHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    .line 428
    invoke-virtual {v2, v3}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setDisableGZipContent(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->upload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getObjectParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 431
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public buildHttpRequest()Lcom/google/api/client/http/HttpRequest;
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    .line 266
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uriTemplate:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Lcom/google/api/client/http/UriTemplate;->expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 606
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    .line 607
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getSuppressRequiredParameterChecks()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Required parameter %s must be specified"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 606
    invoke-static {v0, v3, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 609
    return-void

    :cond_1
    move v0, v1

    .line 607
    goto :goto_0
.end method

.method public execute()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->responseClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeAndDownloadTo(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/HttpResponse;->download(Ljava/io/OutputStream;)V

    .line 542
    return-void
.end method

.method public executeAsInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected executeMedia()Lcom/google/api/client/http/HttpResponse;
    .locals 2

    .prologue
    .line 379
    const-string v0, "alt"

    const-string v1, "media"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    .line 380
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executeMediaAndDownloadTo(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeMedia()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/HttpResponse;->download(Ljava/io/OutputStream;)V

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->download(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpHeaders;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method protected executeMediaAsInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeMedia()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed(Z)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 405
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 406
    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed(Z)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 408
    return-object v0

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    return-object v0
.end method

.method public final getDisableGZipContent()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    return v0
.end method

.method public final getHttpContent()Lcom/google/api/client/http/HttpContent;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public final getLastResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getLastStatusCode()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusCode:I

    return v0
.end method

.method public final getLastStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaHttpDownloader()Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    return-object v0
.end method

.method public final getMediaHttpUploader()Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->responseClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getUriTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uriTemplate:Ljava/lang/String;

    return-object v0
.end method

.method protected final initializeMediaDownload()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    .line 252
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    .line 253
    return-void
.end method

.method protected final initializeMediaUpload(Lcom/google/api/client/http/AbstractInputStreamContent;)V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 236
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;-><init>(Lcom/google/api/client/http/AbstractInputStreamContent;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 237
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setInitiationRequestMethod(Ljava/lang/String;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 238
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setMetadata(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 241
    :cond_0
    return-void
.end method

.method protected newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 456
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    return-object v0
.end method

.method public final queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/googleapis/batch/BatchRequest;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/api/client/googleapis/batch/BatchCallback",
            "<TT;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Batching media requests is not supported"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 582
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getResponseClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 583
    return-void

    .line 581
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 592
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    .line 143
    return-object p0
.end method

.method public setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpHeaders;",
            ")",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 193
    return-object p0
.end method
