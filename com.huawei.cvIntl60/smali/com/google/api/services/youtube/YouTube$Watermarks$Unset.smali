.class public Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Watermarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Unset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "watermarks/unset"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private onBehalfOfContentOwner:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Watermarks;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Watermarks;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 15936
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->this$1:Lcom/google/api/services/youtube/YouTube$Watermarks;

    .line 15937
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Watermarks;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "POST"

    const-string v3, "watermarks/unset"

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15938
    const-string v0, "Required parameter channelId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->channelId:Ljava/lang/String;

    .line 15939
    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15986
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnBehalfOfContentOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16023
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 1

    .prologue
    .line 16044
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 1

    .prologue
    .line 15943
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 0

    .prologue
    .line 15994
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->channelId:Ljava/lang/String;

    .line 15995
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 1

    .prologue
    .line 15948
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 1

    .prologue
    .line 15953
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 1

    .prologue
    .line 15958
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method

.method public setOnBehalfOfContentOwner(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 0

    .prologue
    .line 16038
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->onBehalfOfContentOwner:Ljava/lang/String;

    .line 16039
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 1

    .prologue
    .line 15963
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 1

    .prologue
    .line 15968
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;
    .locals 1

    .prologue
    .line 15973
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15919
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Watermarks$Unset;

    move-result-object v0

    return-object v0
.end method
