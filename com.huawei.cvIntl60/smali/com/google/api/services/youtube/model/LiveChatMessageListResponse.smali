.class public final Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private eventId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LiveChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private offlineAt:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageInfo:Lcom/google/api/services/youtube/model/PageInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pollingIntervalMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private tokenPagination:Lcom/google/api/services/youtube/model/TokenPagination;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private visitorId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/google/api/services/youtube/model/LiveChatMessage;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LiveChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineAt()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->offlineAt:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getPageInfo()Lcom/google/api/services/youtube/model/PageInfo;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->pageInfo:Lcom/google/api/services/youtube/model/PageInfo;

    return-object v0
.end method

.method public getPollingIntervalMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->pollingIntervalMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getTokenPagination()Lcom/google/api/services/youtube/model/TokenPagination;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->tokenPagination:Lcom/google/api/services/youtube/model/TokenPagination;

    return-object v0
.end method

.method public getVisitorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->visitorId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 1

    .prologue
    .line 287
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->etag:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public setEventId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->eventId:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setItems(Ljava/util/List;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LiveChatMessage;",
            ">;)",
            "Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;"
        }
    .end annotation

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->items:Ljava/util/List;

    .line 161
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->kind:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->nextPageToken:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public setOfflineAt(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->offlineAt:Lcom/google/api/client/util/DateTime;

    .line 218
    return-object p0
.end method

.method public setPageInfo(Lcom/google/api/services/youtube/model/PageInfo;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->pageInfo:Lcom/google/api/services/youtube/model/PageInfo;

    .line 233
    return-object p0
.end method

.method public setPollingIntervalMillis(Ljava/lang/Long;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->pollingIntervalMillis:Ljava/lang/Long;

    .line 250
    return-object p0
.end method

.method public setTokenPagination(Lcom/google/api/services/youtube/model/TokenPagination;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->tokenPagination:Lcom/google/api/services/youtube/model/TokenPagination;

    .line 265
    return-object p0
.end method

.method public setVisitorId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;->visitorId:Ljava/lang/String;

    .line 282
    return-object p0
.end method
