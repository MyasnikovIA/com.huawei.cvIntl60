.class public final Lcom/google/api/services/youtube/model/LiveChatBan;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private snippet:Lcom/google/api/services/youtube/model/LiveChatBanSnippet;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatBan;->clone()Lcom/google/api/services/youtube/model/LiveChatBan;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatBan;->clone()Lcom/google/api/services/youtube/model/LiveChatBan;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/LiveChatBan;
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatBan;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatBan;->clone()Lcom/google/api/services/youtube/model/LiveChatBan;

    move-result-object v0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatBan;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatBan;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatBan;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Lcom/google/api/services/youtube/model/LiveChatBanSnippet;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatBan;->snippet:Lcom/google/api/services/youtube/model/LiveChatBanSnippet;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatBan;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatBan;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatBan;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatBan;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatBan;
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatBan;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatBan;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatBan;->etag:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatBan;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatBan;->id:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatBan;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatBan;->kind:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public setSnippet(Lcom/google/api/services/youtube/model/LiveChatBanSnippet;)Lcom/google/api/services/youtube/model/LiveChatBan;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatBan;->snippet:Lcom/google/api/services/youtube/model/LiveChatBanSnippet;

    .line 129
    return-object p0
.end method
