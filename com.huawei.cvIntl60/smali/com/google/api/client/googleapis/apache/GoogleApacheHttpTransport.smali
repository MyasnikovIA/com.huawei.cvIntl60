.class public final Lcom/google/api/client/googleapis/apache/GoogleApacheHttpTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static newTrustedTransport()Lcom/google/api/client/http/apache/ApacheHttpTransport;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;

    invoke-direct {v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/api/client/googleapis/GoogleUtils;->getCertificateTrustStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->build()Lcom/google/api/client/http/apache/ApacheHttpTransport;

    move-result-object v0

    return-object v0
.end method
