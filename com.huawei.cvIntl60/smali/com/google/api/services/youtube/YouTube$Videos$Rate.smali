.class public Lcom/google/api/services/youtube/YouTube$Videos$Rate;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rate"
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
.field private static final REST_PATH:Ljava/lang/String; = "videos/rate"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private rating:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Videos;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Videos;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 15258
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->this$1:Lcom/google/api/services/youtube/YouTube$Videos;

    .line 15259
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "POST"

    const-string v3, "videos/rate"

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15260
    const-string v0, "Required parameter id must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->id:Ljava/lang/String;

    .line 15261
    const-string v0, "Required parameter rating must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->rating:Ljava/lang/String;

    .line 15262
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15310
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15329
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 1

    .prologue
    .line 15340
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 1

    .prologue
    .line 15266
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 1

    .prologue
    .line 15271
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 0

    .prologue
    .line 15318
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->id:Ljava/lang/String;

    .line 15319
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 1

    .prologue
    .line 15276
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 1

    .prologue
    .line 15281
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 1

    .prologue
    .line 15286
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 1

    .prologue
    .line 15291
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method

.method public setRating(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 0

    .prologue
    .line 15334
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->rating:Ljava/lang/String;

    .line 15335
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 1

    .prologue
    .line 15296
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 15239
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    move-result-object v0

    return-object v0
.end method
