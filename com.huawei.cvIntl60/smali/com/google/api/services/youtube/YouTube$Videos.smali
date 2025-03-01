.class public Lcom/google/api/services/youtube/YouTube$Videos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Videos"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$Videos$Update;,
        Lcom/google/api/services/youtube/YouTube$Videos$ReportAbuse;,
        Lcom/google/api/services/youtube/YouTube$Videos$Rate;,
        Lcom/google/api/services/youtube/YouTube$Videos$List;,
        Lcom/google/api/services/youtube/YouTube$Videos$Insert;,
        Lcom/google/api/services/youtube/YouTube$Videos$GetRating;,
        Lcom/google/api/services/youtube/YouTube$Videos$Delete;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .prologue
    .line 14075
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15497
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Delete;
    .locals 2

    .prologue
    .line 14090
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Videos$Delete;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$Delete;-><init>(Lcom/google/api/services/youtube/YouTube$Videos;Ljava/lang/String;)V

    .line 14091
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 14092
    return-object v0
.end method

.method public getRating(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$GetRating;
    .locals 2

    .prologue
    .line 14239
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Videos$GetRating;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$GetRating;-><init>(Lcom/google/api/services/youtube/YouTube$Videos;Ljava/lang/String;)V

    .line 14240
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 14241
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/Video;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 2

    .prologue
    .line 14408
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;-><init>(Lcom/google/api/services/youtube/YouTube$Videos;Ljava/lang/String;Lcom/google/api/services/youtube/model/Video;)V

    .line 14409
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 14410
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/Video;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .locals 2

    .prologue
    .line 14438
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;-><init>(Lcom/google/api/services/youtube/YouTube$Videos;Ljava/lang/String;Lcom/google/api/services/youtube/model/Video;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 14439
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 14440
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$List;
    .locals 2

    .prologue
    .line 14816
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Videos$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$List;-><init>(Lcom/google/api/services/youtube/YouTube$Videos;Ljava/lang/String;)V

    .line 14817
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 14818
    return-object v0
.end method

.method public rate(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Videos$Rate;
    .locals 2

    .prologue
    .line 15234
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Videos$Rate;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Rate;-><init>(Lcom/google/api/services/youtube/YouTube$Videos;Ljava/lang/String;Ljava/lang/String;)V

    .line 15235
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 15236
    return-object v0
.end method

.method public reportAbuse(Lcom/google/api/services/youtube/model/VideoAbuseReport;)Lcom/google/api/services/youtube/YouTube$Videos$ReportAbuse;
    .locals 2

    .prologue
    .line 15355
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Videos$ReportAbuse;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Videos$ReportAbuse;-><init>(Lcom/google/api/services/youtube/YouTube$Videos;Lcom/google/api/services/youtube/model/VideoAbuseReport;)V

    .line 15356
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 15357
    return-object v0
.end method

.method public update(Ljava/lang/String;Lcom/google/api/services/youtube/model/Video;)Lcom/google/api/services/youtube/YouTube$Videos$Update;
    .locals 2

    .prologue
    .line 15492
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Videos$Update;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Videos$Update;-><init>(Lcom/google/api/services/youtube/YouTube$Videos;Ljava/lang/String;Lcom/google/api/services/youtube/model/Video;)V

    .line 15493
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Videos;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 15494
    return-object v0
.end method
