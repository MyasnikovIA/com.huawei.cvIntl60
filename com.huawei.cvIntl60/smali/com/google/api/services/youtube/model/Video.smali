.class public final Lcom/google/api/services/youtube/model/Video;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private ageGating:Lcom/google/api/services/youtube/model/VideoAgeGating;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private contentDetails:Lcom/google/api/services/youtube/model/VideoContentDetails;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fileDetails:Lcom/google/api/services/youtube/model/VideoFileDetails;
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

.field private liveStreamingDetails:Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private localizations:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/VideoLocalization;",
            ">;"
        }
    .end annotation
.end field

.field private monetizationDetails:Lcom/google/api/services/youtube/model/VideoMonetizationDetails;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private player:Lcom/google/api/services/youtube/model/VideoPlayer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private processingDetails:Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private projectDetails:Lcom/google/api/services/youtube/model/VideoProjectDetails;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private recordingDetails:Lcom/google/api/services/youtube/model/VideoRecordingDetails;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private snippet:Lcom/google/api/services/youtube/model/VideoSnippet;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private statistics:Lcom/google/api/services/youtube/model/VideoStatistics;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private status:Lcom/google/api/services/youtube/model/VideoStatus;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private suggestions:Lcom/google/api/services/youtube/model/VideoSuggestions;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private topicDetails:Lcom/google/api/services/youtube/model/VideoTopicDetails;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Video;->clone()Lcom/google/api/services/youtube/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Video;->clone()Lcom/google/api/services/youtube/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/Video;
    .locals 1

    .prologue
    .line 538
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/Video;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Video;->clone()Lcom/google/api/services/youtube/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public getAgeGating()Lcom/google/api/services/youtube/model/VideoAgeGating;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->ageGating:Lcom/google/api/services/youtube/model/VideoAgeGating;

    return-object v0
.end method

.method public getContentDetails()Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->contentDetails:Lcom/google/api/services/youtube/model/VideoContentDetails;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getFileDetails()Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->fileDetails:Lcom/google/api/services/youtube/model/VideoFileDetails;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveStreamingDetails()Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->liveStreamingDetails:Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    return-object v0
.end method

.method public getLocalizations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/VideoLocalization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->localizations:Ljava/util/Map;

    return-object v0
.end method

.method public getMonetizationDetails()Lcom/google/api/services/youtube/model/VideoMonetizationDetails;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->monetizationDetails:Lcom/google/api/services/youtube/model/VideoMonetizationDetails;

    return-object v0
.end method

.method public getPlayer()Lcom/google/api/services/youtube/model/VideoPlayer;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->player:Lcom/google/api/services/youtube/model/VideoPlayer;

    return-object v0
.end method

.method public getProcessingDetails()Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->processingDetails:Lcom/google/api/services/youtube/model/VideoProcessingDetails;

    return-object v0
.end method

.method public getProjectDetails()Lcom/google/api/services/youtube/model/VideoProjectDetails;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->projectDetails:Lcom/google/api/services/youtube/model/VideoProjectDetails;

    return-object v0
.end method

.method public getRecordingDetails()Lcom/google/api/services/youtube/model/VideoRecordingDetails;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->recordingDetails:Lcom/google/api/services/youtube/model/VideoRecordingDetails;

    return-object v0
.end method

.method public getSnippet()Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->snippet:Lcom/google/api/services/youtube/model/VideoSnippet;

    return-object v0
.end method

.method public getStatistics()Lcom/google/api/services/youtube/model/VideoStatistics;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->statistics:Lcom/google/api/services/youtube/model/VideoStatistics;

    return-object v0
.end method

.method public getStatus()Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->status:Lcom/google/api/services/youtube/model/VideoStatus;

    return-object v0
.end method

.method public getSuggestions()Lcom/google/api/services/youtube/model/VideoSuggestions;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->suggestions:Lcom/google/api/services/youtube/model/VideoSuggestions;

    return-object v0
.end method

.method public getTopicDetails()Lcom/google/api/services/youtube/model/VideoTopicDetails;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->topicDetails:Lcom/google/api/services/youtube/model/VideoTopicDetails;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/Video;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/Video;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Video;
    .locals 1

    .prologue
    .line 533
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/Video;

    return-object v0
.end method

.method public setAgeGating(Lcom/google/api/services/youtube/model/VideoAgeGating;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->ageGating:Lcom/google/api/services/youtube/model/VideoAgeGating;

    .line 197
    return-object p0
.end method

.method public setContentDetails(Lcom/google/api/services/youtube/model/VideoContentDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->contentDetails:Lcom/google/api/services/youtube/model/VideoContentDetails;

    .line 216
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->etag:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public setFileDetails(Lcom/google/api/services/youtube/model/VideoFileDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->fileDetails:Lcom/google/api/services/youtube/model/VideoFileDetails;

    .line 254
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->id:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->kind:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public setLiveStreamingDetails(Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->liveStreamingDetails:Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    .line 309
    return-object p0
.end method

.method public setLocalizations(Ljava/util/Map;)Lcom/google/api/services/youtube/model/Video;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/VideoLocalization;",
            ">;)",
            "Lcom/google/api/services/youtube/model/Video;"
        }
    .end annotation

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->localizations:Ljava/util/Map;

    .line 326
    return-object p0
.end method

.method public setMonetizationDetails(Lcom/google/api/services/youtube/model/VideoMonetizationDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->monetizationDetails:Lcom/google/api/services/youtube/model/VideoMonetizationDetails;

    .line 345
    return-object p0
.end method

.method public setPlayer(Lcom/google/api/services/youtube/model/VideoPlayer;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->player:Lcom/google/api/services/youtube/model/VideoPlayer;

    .line 364
    return-object p0
.end method

.method public setProcessingDetails(Lcom/google/api/services/youtube/model/VideoProcessingDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->processingDetails:Lcom/google/api/services/youtube/model/VideoProcessingDetails;

    .line 397
    return-object p0
.end method

.method public setProjectDetails(Lcom/google/api/services/youtube/model/VideoProjectDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->projectDetails:Lcom/google/api/services/youtube/model/VideoProjectDetails;

    .line 414
    return-object p0
.end method

.method public setRecordingDetails(Lcom/google/api/services/youtube/model/VideoRecordingDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->recordingDetails:Lcom/google/api/services/youtube/model/VideoRecordingDetails;

    .line 433
    return-object p0
.end method

.method public setSnippet(Lcom/google/api/services/youtube/model/VideoSnippet;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->snippet:Lcom/google/api/services/youtube/model/VideoSnippet;

    .line 452
    return-object p0
.end method

.method public setStatistics(Lcom/google/api/services/youtube/model/VideoStatistics;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->statistics:Lcom/google/api/services/youtube/model/VideoStatistics;

    .line 469
    return-object p0
.end method

.method public setStatus(Lcom/google/api/services/youtube/model/VideoStatus;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->status:Lcom/google/api/services/youtube/model/VideoStatus;

    .line 488
    return-object p0
.end method

.method public setSuggestions(Lcom/google/api/services/youtube/model/VideoSuggestions;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->suggestions:Lcom/google/api/services/youtube/model/VideoSuggestions;

    .line 509
    return-object p0
.end method

.method public setTopicDetails(Lcom/google/api/services/youtube/model/VideoTopicDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->topicDetails:Lcom/google/api/services/youtube/model/VideoTopicDetails;

    .line 528
    return-object p0
.end method
