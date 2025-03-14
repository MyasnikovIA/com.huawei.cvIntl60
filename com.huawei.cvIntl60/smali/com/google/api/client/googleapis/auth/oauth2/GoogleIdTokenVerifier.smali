.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;
.super Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;
    }
.end annotation


# instance fields
.field private final publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;-><init>(Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$Builder;)V

    .line 85
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;

    invoke-direct {v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;)V

    .line 67
    return-void
.end method


# virtual methods
.method public final getExpirationTimeMilliseconds()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;->getExpirationTimeMilliseconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getPublicCertsEncodedUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;->getPublicCertsEncodedUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPublicKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;->getPublicKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPublicKeysManager()Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    return-object v0
.end method

.method public loadPublicCerts()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;->refresh()Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    .line 211
    return-object p0
.end method

.method public verify(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;

    move-result-object v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-super {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;->verify(Lcom/google/api/client/auth/openidconnect/IdToken;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 179
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GooglePublicKeysManager;->getPublicKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    .line 175
    invoke-virtual {p1, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->verifySignature(Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 179
    goto :goto_0
.end method
