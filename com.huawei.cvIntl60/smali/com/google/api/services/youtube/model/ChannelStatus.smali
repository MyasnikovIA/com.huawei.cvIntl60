.class public final Lcom/google/api/services/youtube/model/ChannelStatus;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private isLinked:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private longUploadsStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private privacyStatus:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelStatus;->clone()Lcom/google/api/services/youtube/model/ChannelStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelStatus;->clone()Lcom/google/api/services/youtube/model/ChannelStatus;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/ChannelStatus;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelStatus;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelStatus;->clone()Lcom/google/api/services/youtube/model/ChannelStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIsLinked()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelStatus;->isLinked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLongUploadsStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelStatus;->longUploadsStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelStatus;->privacyStatus:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelStatus;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelStatus;
    .locals 1

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelStatus;

    return-object v0
.end method

.method public setIsLinked(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/ChannelStatus;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelStatus;->isLinked:Ljava/lang/Boolean;

    .line 74
    return-object p0
.end method

.method public setLongUploadsStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelStatus;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelStatus;->longUploadsStatus:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public setPrivacyStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelStatus;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelStatus;->privacyStatus:Ljava/lang/String;

    .line 108
    return-object p0
.end method
