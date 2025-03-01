.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
.super Lcom/google/api/client/auth/oauth2/Credential$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field serviceAccountId:Ljava/lang/String;

.field serviceAccountPrivateKey:Ljava/security/PrivateKey;

.field serviceAccountPrivateKeyId:Ljava/lang/String;

.field serviceAccountScopes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field serviceAccountUser:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 510
    invoke-static {}, Lcom/google/api/client/auth/oauth2/BearerToken;->authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential$Builder;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)V

    .line 511
    const-string v0, "https://accounts.google.com/o/oauth2/token"

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 512
    return-void
.end method


# virtual methods
.method public bridge synthetic addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 1

    .prologue
    .line 729
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/api/client/auth/oauth2/Credential;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 1

    .prologue
    .line 516
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    invoke-direct {v0, p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;)V

    return-object v0
.end method

.method public final getServiceAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceAccountPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public final getServiceAccountPrivateKeyId()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceAccountScopes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountScopes:Ljava/util/Collection;

    return-object v0
.end method

.method public final getServiceAccountUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountUser:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 1

    .prologue
    .line 749
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    return-object v0
.end method

.method public setClientSecrets(Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 3

    .prologue
    .line 559
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    .line 560
    new-instance v1, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;

    .line 561
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 562
    return-object p0
.end method

.method public setClientSecrets(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 1

    .prologue
    .line 546
    new-instance v0, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;

    invoke-direct {v0, p1, p2}, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 547
    return-object p0
.end method

.method public bridge synthetic setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 1

    .prologue
    .line 534
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    return-object v0
.end method

.method public bridge synthetic setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 1

    .prologue
    .line 526
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    return-object v0
.end method

.method public bridge synthetic setRefreshListeners(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setRefreshListeners(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRefreshListeners(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;"
        }
    .end annotation

    .prologue
    .line 734
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setRefreshListeners(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    return-object v0
.end method

.method public bridge synthetic setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 1

    .prologue
    .line 724
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    return-object v0
.end method

.method public setServiceAccountId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountId:Ljava/lang/String;

    .line 582
    return-object p0
.end method

.method public setServiceAccountPrivateKey(Ljava/security/PrivateKey;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    .line 628
    return-object p0
.end method

.method public setServiceAccountPrivateKeyFromP12File(Ljava/io/File;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 5

    .prologue
    .line 671
    .line 672
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getPkcs12KeyStore()Ljava/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v2, "notasecret"

    const-string v3, "privatekey"

    const-string v4, "notasecret"

    .line 671
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/api/client/util/SecurityUtils;->loadPrivateKeyFromKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    .line 674
    return-object p0
.end method

.method public setServiceAccountPrivateKeyFromPemFile(Ljava/io/File;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 3
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .prologue
    .line 693
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const-string v1, "PRIVATE KEY"

    invoke-static {v0, v1}, Lcom/google/api/client/util/PemReader;->readFirstSectionAndClose(Ljava/io/Reader;Ljava/lang/String;)Lcom/google/api/client/util/PemReader$Section;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Lcom/google/api/client/util/PemReader$Section;->getBase64DecodedBytes()[B

    move-result-object v0

    .line 696
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getRsaKeyFactory()Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    .line 697
    return-object p0
.end method

.method public setServiceAccountPrivateKeyId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 0
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .prologue
    .line 653
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKeyId:Ljava/lang/String;

    .line 654
    return-object p0
.end method

.method public setServiceAccountScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;"
        }
    .end annotation

    .prologue
    .line 607
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountScopes:Ljava/util/Collection;

    .line 608
    return-object p0
.end method

.method public setServiceAccountUser(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountUser:Ljava/lang/String;

    .line 719
    return-object p0
.end method

.method public bridge synthetic setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    return-object v0
.end method

.method public bridge synthetic setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    return-object v0
.end method

.method public bridge synthetic setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 1

    .prologue
    .line 521
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/auth/oauth2/Credential$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    return-object v0
.end method
