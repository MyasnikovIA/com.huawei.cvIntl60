.class public Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$LiveStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Lcom/google/api/services/youtube/model/LiveStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "liveStreams"


# instance fields
.field private onBehalfOfContentOwner:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private onBehalfOfContentOwnerChannel:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$LiveStreams;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$LiveStreams;Ljava/lang/String;Lcom/google/api/services/youtube/model/LiveStream;)V
    .locals 6

    .prologue
    .line 9716
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->this$1:Lcom/google/api/services/youtube/YouTube$LiveStreams;

    .line 9717
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$LiveStreams;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "PUT"

    const-string v3, "liveStreams"

    const-class v5, Lcom/google/api/services/youtube/model/LiveStream;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9718
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->part:Ljava/lang/String;

    .line 9719
    const-string v0, "content"

    invoke-virtual {p0, p3, v0}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9720
    invoke-virtual {p3}, Lcom/google/api/services/youtube/model/LiveStream;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveStream.getId()"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9721
    return-void
.end method


# virtual methods
.method public getOnBehalfOfContentOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9828
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getOnBehalfOfContentOwnerChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9884
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->onBehalfOfContentOwnerChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9783
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 1

    .prologue
    .line 9911
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 1

    .prologue
    .line 9725
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 1

    .prologue
    .line 9730
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 1

    .prologue
    .line 9735
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 1

    .prologue
    .line 9740
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOnBehalfOfContentOwner(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 0

    .prologue
    .line 9843
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->onBehalfOfContentOwner:Ljava/lang/String;

    .line 9844
    return-object p0
.end method

.method public setOnBehalfOfContentOwnerChannel(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 0

    .prologue
    .line 9905
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->onBehalfOfContentOwnerChannel:Ljava/lang/String;

    .line 9906
    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 0

    .prologue
    .line 9799
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->part:Ljava/lang/String;

    .line 9800
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 1

    .prologue
    .line 9745
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 1

    .prologue
    .line 9750
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;
    .locals 1

    .prologue
    .line 9755
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 9689
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;

    move-result-object v0

    return-object v0
.end method
