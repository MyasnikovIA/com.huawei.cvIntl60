.class public Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Lcom/google/api/services/youtube/model/VideoAbuseReportReasonListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "videoAbuseReportReasons"


# instance fields
.field private hl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 13747
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->this$1:Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;

    .line 13748
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "GET"

    const-string v3, "videoAbuseReportReasons"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonListResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13749
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->part:Ljava/lang/String;

    .line 13750
    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1

    .prologue
    .line 13759
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 1

    .prologue
    .line 13754
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13831
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->hl:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13808
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
    .locals 1

    .prologue
    .line 13845
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
    .locals 1

    .prologue
    .line 13764
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
    .locals 1

    .prologue
    .line 13769
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method

.method public setHl(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
    .locals 0

    .prologue
    .line 13839
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->hl:Ljava/lang/String;

    .line 13840
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
    .locals 1

    .prologue
    .line 13774
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
    .locals 1

    .prologue
    .line 13779
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
    .locals 0

    .prologue
    .line 13816
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->part:Ljava/lang/String;

    .line 13817
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
    .locals 1

    .prologue
    .line 13784
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
    .locals 1

    .prologue
    .line 13789
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;
    .locals 1

    .prologue
    .line 13794
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 13729
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List;

    move-result-object v0

    return-object v0
.end method
