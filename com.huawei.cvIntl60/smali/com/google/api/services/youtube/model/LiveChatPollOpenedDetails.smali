.class public final Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;
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
            "Lcom/google/api/services/youtube/model/LiveChatPollItem;",
            ">;"
        }
    .end annotation
.end field

.field private prompt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/youtube/model/LiveChatPollItem;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LiveChatPollItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->items:Ljava/util/List;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->id:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setItems(Ljava/util/List;)Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LiveChatPollItem;",
            ">;)",
            "Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->items:Ljava/util/List;

    .line 87
    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatPollOpenedDetails;->prompt:Ljava/lang/String;

    .line 102
    return-object p0
.end method
