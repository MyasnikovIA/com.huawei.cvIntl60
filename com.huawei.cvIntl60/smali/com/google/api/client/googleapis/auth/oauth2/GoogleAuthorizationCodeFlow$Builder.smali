.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
.super Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field accessType:Ljava/lang/String;

.field approvalPrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/google/api/client/auth/oauth2/BearerToken;->authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v1

    new-instance v4, Lcom/google/api/client/http/GenericUrl;

    const-string v0, "https://accounts.google.com/o/oauth2/token"

    invoke-direct {v4, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;

    .line 197
    invoke-virtual {p3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getClientId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://accounts.google.com/o/oauth2/auth"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 195
    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, p4}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/google/api/client/auth/oauth2/BearerToken;->authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v1

    new-instance v4, Lcom/google/api/client/http/GenericUrl;

    const-string v0, "https://accounts.google.com/o/oauth2/token"

    invoke-direct {v4, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;

    invoke-direct {v5, p3, p4}, Lcom/google/api/client/auth/oauth2/ClientParametersAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "https://accounts.google.com/o/oauth2/auth"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpExecuteInterceptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p5}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    .line 183
    return-void
.end method


# virtual methods
.method public bridge synthetic addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->addRefreshListener(Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;

    invoke-direct {v0, p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;)V

    return-object v0
.end method

.method public final getAccessType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->accessType:Ljava/lang/String;

    return-object v0
.end method

.method public final getApprovalPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->approvalPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessType(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->accessType:Ljava/lang/String;

    .line 359
    return-object p0
.end method

.method public setApprovalPrompt(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->approvalPrompt:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public bridge synthetic setAuthorizationServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setAuthorizationServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAuthorizationServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setAuthorizationServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setClientId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setCredentialCreatedListener(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setCredentialCreatedListener(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCredentialCreatedListener(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setCredentialCreatedListener(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$CredentialCreatedListener;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setCredentialDataStore(Lcom/google/api/client/util/store/DataStore;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setCredentialDataStore(Lcom/google/api/client/util/store/DataStore;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCredentialDataStore(Lcom/google/api/client/util/store/DataStore;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/util/store/DataStore",
            "<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setCredentialDataStore(Lcom/google/api/client/util/store/DataStore;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setCredentialStore(Lcom/google/api/client/auth/oauth2/CredentialStore;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setCredentialStore(Lcom/google/api/client/auth/oauth2/CredentialStore;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCredentialStore(Lcom/google/api/client/auth/oauth2/CredentialStore;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setCredentialStore(Lcom/google/api/client/auth/oauth2/CredentialStore;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setDataStoreFactory(Lcom/google/api/client/util/store/DataStoreFactory;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setDataStoreFactory(Lcom/google/api/client/util/store/DataStoreFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDataStoreFactory(Lcom/google/api/client/util/store/DataStoreFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setDataStoreFactory(Lcom/google/api/client/util/store/DataStoreFactory;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setMethod(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setMethod(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMethod(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setMethod(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setRefreshListeners(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setRefreshListeners(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRefreshListeners(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setRefreshListeners(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkState(Z)V

    .line 238
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method

.method public bridge synthetic setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;
    .locals 1

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow$Builder;

    return-object v0
.end method
