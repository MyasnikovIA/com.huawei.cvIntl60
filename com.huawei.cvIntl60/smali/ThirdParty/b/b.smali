.class public LThirdParty/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LThirdParty/b/b$a;
    }
.end annotation


# static fields
.field private static x:LThirdParty/b/b;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:LThirdParty/b/b$a;

.field private e:Landroid/app/Activity;

.field private f:Lcom/google/api/services/youtube/YouTube;

.field private g:Lcom/google/api/client/http/HttpTransport;

.field private h:Lcom/google/api/client/json/JsonFactory;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[B

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    sput-object v0, LThirdParty/b/b;->x:LThirdParty/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, LThirdParty/b/b;->d:LThirdParty/b/b$a;

    .line 75
    iput-object v1, p0, LThirdParty/b/b;->g:Lcom/google/api/client/http/HttpTransport;

    .line 76
    iput-object v1, p0, LThirdParty/b/b;->h:Lcom/google/api/client/json/JsonFactory;

    .line 78
    iput v0, p0, LThirdParty/b/b;->i:I

    .line 91
    iput-boolean v0, p0, LThirdParty/b/b;->r:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, LThirdParty/b/b;->s:Z

    .line 105
    iput-object v1, p0, LThirdParty/b/b;->t:Ljava/lang/String;

    .line 106
    iput-object v1, p0, LThirdParty/b/b;->u:Ljava/lang/String;

    .line 107
    iput-object v1, p0, LThirdParty/b/b;->v:Ljava/lang/String;

    .line 108
    iput-object v1, p0, LThirdParty/b/b;->w:Ljava/lang/String;

    .line 152
    return-void
.end method

.method static synthetic a(LThirdParty/b/b;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, LThirdParty/b/b;->i:I

    return p1
.end method

.method static synthetic a(LThirdParty/b/b;La/c/a;Z)I
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, LThirdParty/b/b;->a(La/c/a;Z)I

    move-result v0

    return v0
.end method

.method private a(La/c/a;Z)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 553
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 554
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    .line 556
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 557
    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 558
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 559
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    :try_start_0
    new-instance v0, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    invoke-direct {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;-><init>()V

    .line 564
    const-string v4, "liveStreamTitle"

    invoke-virtual {p1, v4}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "360 Live Stream - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    .line 572
    :goto_0
    const-string v4, "liveStreamDescription"

    invoke-virtual {p1, v4}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    .line 576
    new-instance v4, Lcom/google/api/client/util/DateTime;

    invoke-direct {v4, v1}, Lcom/google/api/client/util/DateTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v4}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->setScheduledStartTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    .line 578
    new-instance v1, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    invoke-direct {v1}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;-><init>()V

    .line 579
    new-instance v4, Lcom/google/api/services/youtube/model/MonitorStreamInfo;

    invoke-direct {v4}, Lcom/google/api/services/youtube/model/MonitorStreamInfo;-><init>()V

    .line 580
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/api/services/youtube/model/MonitorStreamInfo;->setEnableMonitorStream(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/MonitorStreamInfo;

    .line 581
    invoke-virtual {v1, v4}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->setMonitorStream(Lcom/google/api/services/youtube/model/MonitorStreamInfo;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    .line 584
    if-eqz p2, :cond_0

    .line 586
    const-string v4, "360"

    invoke-virtual {v1, v4}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->setProjection(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    .line 590
    :cond_0
    new-instance v4, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    invoke-direct {v4}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;-><init>()V

    .line 591
    const-string v5, "public"

    invoke-virtual {v4, v5}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->setPrivacyStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    .line 593
    new-instance v5, Lcom/google/api/services/youtube/model/LiveBroadcast;

    invoke-direct {v5}, Lcom/google/api/services/youtube/model/LiveBroadcast;-><init>()V

    .line 594
    const-string v6, "youtube#liveBroadcast"

    invoke-virtual {v5, v6}, Lcom/google/api/services/youtube/model/LiveBroadcast;->setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 595
    invoke-virtual {v5, v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->setSnippet(Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;)Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 596
    invoke-virtual {v5, v4}, Lcom/google/api/services/youtube/model/LiveBroadcast;->setStatus(Lcom/google/api/services/youtube/model/LiveBroadcastStatus;)Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 597
    invoke-virtual {v5, v1}, Lcom/google/api/services/youtube/model/LiveBroadcast;->setContentDetails(Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;)Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 600
    iget-object v0, p0, LThirdParty/b/b;->f:Lcom/google/api/services/youtube/YouTube;

    .line 601
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v0

    const-string v1, "snippet,status,contentDetails"

    invoke-virtual {v0, v1, v5}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/LiveBroadcast;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Insert;

    move-result-object v0

    .line 605
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Insert;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 606
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LThirdParty/b/b;->u:Ljava/lang/String;

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.youtube.com/watch?v="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, LThirdParty/b/b;->u:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LThirdParty/b/b;->w:Ljava/lang/String;

    .line 609
    const-string v1, "================== Returned Broadcast ==================\n"

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Title: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getSnippet()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Description: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getSnippet()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Published At: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getSnippet()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->getPublishedAt()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduled Start Time: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getSnippet()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->getScheduledStartTime()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduled End Time: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getSnippet()Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->getScheduledEndTime()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Streaming Link: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, LThirdParty/b/b;->w:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 619
    new-instance v1, Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    invoke-direct {v1}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;-><init>()V

    .line 620
    const-string v4, "liveStreamTitle"

    invoke-virtual {p1, v4}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "360 Live Stream - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    .line 628
    :goto_1
    const-string v3, "liveStreamDescription"

    invoke-virtual {p1, v3}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    .line 632
    new-instance v3, Lcom/google/api/services/youtube/model/CdnSettings;

    invoke-direct {v3}, Lcom/google/api/services/youtube/model/CdnSettings;-><init>()V

    .line 633
    const-string v4, "streamFormat"

    invoke-virtual {p1, v4}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/youtube/model/CdnSettings;->setFormat(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CdnSettings;

    .line 638
    const-string v4, "rtmp"

    invoke-virtual {v3, v4}, Lcom/google/api/services/youtube/model/CdnSettings;->setIngestionType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CdnSettings;

    .line 640
    new-instance v4, Lcom/google/api/services/youtube/model/LiveStream;

    invoke-direct {v4}, Lcom/google/api/services/youtube/model/LiveStream;-><init>()V

    .line 641
    const-string v5, "youtube#liveStream"

    invoke-virtual {v4, v5}, Lcom/google/api/services/youtube/model/LiveStream;->setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStream;

    .line 642
    invoke-virtual {v4, v1}, Lcom/google/api/services/youtube/model/LiveStream;->setSnippet(Lcom/google/api/services/youtube/model/LiveStreamSnippet;)Lcom/google/api/services/youtube/model/LiveStream;

    .line 643
    invoke-virtual {v4, v3}, Lcom/google/api/services/youtube/model/LiveStream;->setCdn(Lcom/google/api/services/youtube/model/CdnSettings;)Lcom/google/api/services/youtube/model/LiveStream;

    .line 646
    iget-object v1, p0, LThirdParty/b/b;->f:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1}, Lcom/google/api/services/youtube/YouTube;->liveStreams()Lcom/google/api/services/youtube/YouTube$LiveStreams;

    move-result-object v1

    const-string v3, "snippet,cdn"

    .line 647
    invoke-virtual {v1, v3, v4}, Lcom/google/api/services/youtube/YouTube$LiveStreams;->insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/LiveStream;)Lcom/google/api/services/youtube/YouTube$LiveStreams$Insert;

    move-result-object v1

    .line 650
    invoke-virtual {v1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$Insert;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/youtube/model/LiveStream;

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveStream;->getCdn()Lcom/google/api/services/youtube/model/CdnSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/CdnSettings;->getIngestionInfo()Lcom/google/api/services/youtube/model/IngestionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/IngestionInfo;->getIngestionAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveStream;->getCdn()Lcom/google/api/services/youtube/model/CdnSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/CdnSettings;->getIngestionInfo()Lcom/google/api/services/youtube/model/IngestionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/IngestionInfo;->getStreamName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LThirdParty/b/b;->t:Ljava/lang/String;

    .line 652
    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveStream;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LThirdParty/b/b;->v:Ljava/lang/String;

    .line 654
    const-string v3, "================== Returned Stream ==================\n"

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveStream;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveStream;->getSnippet()Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveStream;->getSnippet()Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Published At: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveStream;->getSnippet()Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->getPublishedAt()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rtmp URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, LThirdParty/b/b;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 662
    iget-object v3, p0, LThirdParty/b/b;->f:Lcom/google/api/services/youtube/YouTube;

    .line 663
    invoke-virtual {v3}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v4, "id,contentDetails"

    invoke-virtual {v3, v0, v4}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->bind(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Bind;

    move-result-object v0

    .line 667
    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveStream;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Bind;->setStreamId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Bind;

    .line 671
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Bind;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 672
    const-string v1, "================== Returned Bind Broadcast ==================\n"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v3}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {p0, v1, v3}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Streaming Link: https://www.youtube.com/watch?v="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 675
    const-string v0, "=============================================================\n"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    move v0, v2

    .line 719
    :goto_2
    return v0

    .line 570
    :cond_1
    const-string v4, "liveStreamTitle"

    invoke-virtual {p1, v4}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;->setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastSnippet;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 681
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleJsonResponseException code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 682
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 683
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "The user is not enabled for live streaming."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 681
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->printStackTrace()V

    .line 686
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "The user is not enabled for live streaming."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 688
    const/4 v0, -0x5

    goto :goto_2

    .line 626
    :cond_2
    :try_start_1
    const-string v3, "liveStreamTitle"

    invoke-virtual {p1, v3}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/services/youtube/model/LiveStreamSnippet;->setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    :try_end_1
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 709
    :catch_1
    move-exception v0

    .line 711
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 713
    const/4 v0, -0x1

    goto/16 :goto_2

    .line 690
    :cond_3
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Title must be between 1 and 128 characters long"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 691
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Title is invalid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 693
    :cond_4
    const/4 v0, -0x6

    goto/16 :goto_2

    .line 696
    :cond_5
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getCode()I

    move-result v1

    const/16 v3, 0x1f4

    if-lt v1, v3, :cond_6

    .line 698
    const/4 v0, -0x3

    goto/16 :goto_2

    .line 700
    :cond_6
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_7

    .line 702
    const/4 v0, -0x2

    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 706
    goto/16 :goto_2

    .line 715
    :catch_2
    move-exception v0

    .line 717
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throwable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 719
    const/4 v0, -0x4

    goto/16 :goto_2
.end method

.method public static declared-synchronized a()LThirdParty/b/b;
    .locals 2

    .prologue
    .line 157
    const-class v1, LThirdParty/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, LThirdParty/b/b;->x:LThirdParty/b/b;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, LThirdParty/b/b;

    invoke-direct {v0}, LThirdParty/b/b;-><init>()V

    sput-object v0, LThirdParty/b/b;->x:LThirdParty/b/b;

    .line 162
    :cond_0
    sget-object v0, LThirdParty/b/b;->x:LThirdParty/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LThirdParty/b/b;)Lcom/google/api/services/youtube/YouTube;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LThirdParty/b/b;->f:Lcom/google/api/services/youtube/YouTube;

    return-object v0
.end method

.method static synthetic a(LThirdParty/b/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, LThirdParty/b/b;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/api/services/youtube/YouTube;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, LThirdParty/b/b;->c(Lcom/google/api/services/youtube/YouTube;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, LThirdParty/b/b;->d:LThirdParty/b/b$a;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, LThirdParty/b/b;->d:LThirdParty/b/b$a;

    invoke-interface {v0, p1, p2}, LThirdParty/b/b$a;->a(II)V

    .line 476
    :cond_0
    return-void
.end method

.method static synthetic a(LThirdParty/b/b;II)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, LThirdParty/b/b;->a(II)V

    return-void
.end method

.method static synthetic a(LThirdParty/b/b;Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, LThirdParty/b/b;->a(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(LThirdParty/b/b;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1}, LThirdParty/b/b;->d(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 769
    .line 770
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v0

    const-string v1, "id, snippet, contentDetails, status"

    invoke-virtual {v0, p2, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->control(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Control;

    move-result-object v0

    .line 771
    if-eqz p3, :cond_0

    .line 773
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Control;->setDisplaySlate(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Control;

    .line 779
    :goto_0
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Control;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycleStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getStatus()Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->getLifeCycleStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStartWithSlate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getContentDetails()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->getStartWithSlate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 786
    :goto_1
    return-void

    .line 777
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Control;->setDisplaySlate(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Control;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    .line 146
    const-string v0, "YouTubeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    return-void
.end method

.method static synthetic b(LThirdParty/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LThirdParty/b/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(LThirdParty/b/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, LThirdParty/b/b;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/api/services/youtube/YouTube;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, LThirdParty/b/b;->d(Lcom/google/api/services/youtube/YouTube;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "youtubeApiServer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LThirdParty/b/b;->a:Landroid/os/HandlerThread;

    .line 218
    iget-object v0, p0, LThirdParty/b/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 219
    new-instance v0, LThirdParty/b/b$1;

    iget-object v1, p0, LThirdParty/b/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LThirdParty/b/b$1;-><init>(LThirdParty/b/b;Landroid/os/Looper;)V

    iput-object v0, p0, LThirdParty/b/b;->b:Landroid/os/Handler;

    .line 468
    return-void
.end method

.method static synthetic b(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1}, LThirdParty/b/b;->e(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(LThirdParty/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LThirdParty/b/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(LThirdParty/b/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, LThirdParty/b/b;->w:Ljava/lang/String;

    return-object p1
.end method

.method private static c(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->liveStreams()Lcom/google/api/services/youtube/YouTube$LiveStreams;

    move-result-object v0

    const-string v1, "cdn"

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveStreams;->list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$List;

    move-result-object v0

    .line 539
    invoke-virtual {v0, p1}, Lcom/google/api/services/youtube/YouTube$LiveStreams$List;->setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$List;

    .line 540
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveStreams$List;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStreamListResponse;

    .line 542
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveStreamListResponse;->getItems()Ljava/util/List;

    move-result-object v0

    .line 543
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    const-string v0, ""

    .line 548
    :goto_0
    return-object v0

    .line 547
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStream;

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveStream;->getCdn()Lcom/google/api/services/youtube/model/CdnSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/CdnSettings;->getIngestionInfo()Lcom/google/api/services/youtube/model/IngestionInfo;

    move-result-object v0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/IngestionInfo;->getIngestionAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/IngestionInfo;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Lcom/google/api/services/youtube/YouTube;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/youtube/YouTube;",
            ")",
            "Ljava/util/List",
            "<",
            "LThirdParty/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v0

    const-string v1, "id,snippet,contentDetails"

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;

    move-result-object v0

    .line 482
    const-string v1, "upcoming"

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;->setBroadcastStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;

    .line 485
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcastListResponse;

    .line 488
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastListResponse;->getItems()Ljava/util/List;

    move-result-object v0

    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 495
    new-instance v3, LThirdParty/b/a;

    invoke-direct {v3}, LThirdParty/b/a;-><init>()V

    .line 496
    invoke-virtual {v3, v0}, LThirdParty/b/a;->a(Lcom/google/api/services/youtube/model/LiveBroadcast;)V

    .line 497
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getContentDetails()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getContentDetails()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->getBoundStreamId()Ljava/lang/String;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_0

    .line 500
    invoke-static {p0, v0}, LThirdParty/b/b;->c(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {v3, v0}, LThirdParty/b/a;->a(Ljava/lang/String;)V

    .line 504
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
    :cond_1
    return-object v1
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 826
    :try_start_0
    iget-object v0, p0, LThirdParty/b/b;->f:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;

    move-result-object v0

    iget-object v1, p0, LThirdParty/b/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;->setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcastListResponse;

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastListResponse;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/youtube/model/LiveBroadcast;

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getStatus()Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->getLifeCycleStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {p0, v1, v3}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    .line 829
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastListResponse;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcast;

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getStatus()Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->getLifeCycleStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "live"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    const/4 v0, 0x1

    .line 839
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 835
    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    .line 839
    goto :goto_0
.end method

.method static synthetic d(LThirdParty/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LThirdParty/b/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Lcom/google/api/services/youtube/YouTube;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/youtube/YouTube;",
            ")",
            "Ljava/util/List",
            "<",
            "LThirdParty/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    .line 726
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v0

    const-string v1, "id, snippet, contentDetails, status"

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;

    move-result-object v0

    .line 728
    const-string v1, "persistent"

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;->setBroadcastType(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;

    .line 729
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;->setMine(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;

    .line 731
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcastListResponse;

    .line 734
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastListResponse;->getItems()Ljava/util/List;

    move-result-object v0

    .line 736
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 739
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 740
    new-instance v3, LThirdParty/b/a;

    invoke-direct {v3}, LThirdParty/b/a;-><init>()V

    .line 741
    invoke-virtual {v3, v0}, LThirdParty/b/a;->a(Lcom/google/api/services/youtube/model/LiveBroadcast;)V

    .line 742
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getContentDetails()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 743
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getContentDetails()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->getBoundStreamId()Ljava/lang/String;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_0

    .line 745
    invoke-static {p0, v0}, LThirdParty/b/b;->c(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-virtual {v3, v0}, LThirdParty/b/a;->a(Ljava/lang/String;)V

    .line 749
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 751
    :cond_1
    return-object v1
.end method

.method private static d(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v0

    const-string v1, "live"

    const-string v2, "status"

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->transition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;->execute()Ljava/lang/Object;

    .line 758
    return-void
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 847
    :try_start_0
    iget-object v0, p0, LThirdParty/b/b;->f:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube;->liveStreams()Lcom/google/api/services/youtube/YouTube$LiveStreams;

    move-result-object v0

    const-string v3, "id,snippet,status"

    invoke-virtual {v0, v3}, Lcom/google/api/services/youtube/YouTube$LiveStreams;->list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveStreams$List;

    move-result-object v0

    .line 850
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/api/services/youtube/YouTube$LiveStreams$List;->setMine(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$LiveStreams$List;

    .line 851
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveStreams$List;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStreamListResponse;

    .line 852
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveStreamListResponse;->getItems()Ljava/util/List;

    move-result-object v0

    .line 853
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStream;

    .line 854
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveStream;->getStatus()Lcom/google/api/services/youtube/model/LiveStreamStatus;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveStreamStatus;->getStreamStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "active"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stream status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveStreamStatus;->getStreamStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-direct {p0, v0, v3}, LThirdParty/b/b;->a(Ljava/lang/String;I)V

    move v0, v1

    .line 870
    :goto_0
    return v0

    .line 862
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveStreamStatus;->getStreamStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LThirdParty/b/b;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 863
    goto :goto_0

    .line 867
    :catch_0
    move-exception v0

    .line 869
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    .line 870
    goto :goto_0
.end method

.method private static e(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/google/api/services/youtube/YouTube;->liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    move-result-object v0

    const-string v1, "complete"

    const-string v2, "status"

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->transition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;->execute()Ljava/lang/Object;

    .line 764
    return-void
.end method

.method static synthetic e(LThirdParty/b/b;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, LThirdParty/b/b;->s:Z

    return v0
.end method

.method static synthetic f(LThirdParty/b/b;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LThirdParty/b/b;->j:I

    return v0
.end method

.method static synthetic g(LThirdParty/b/b;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LThirdParty/b/b;->k:I

    return v0
.end method

.method static synthetic h(LThirdParty/b/b;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LThirdParty/b/b;->l:I

    return v0
.end method

.method static synthetic i(LThirdParty/b/b;)[B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LThirdParty/b/b;->m:[B

    return-object v0
.end method

.method static synthetic j(LThirdParty/b/b;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LThirdParty/b/b;->n:I

    return v0
.end method

.method static synthetic k(LThirdParty/b/b;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LThirdParty/b/b;->o:I

    return v0
.end method

.method static synthetic l(LThirdParty/b/b;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LThirdParty/b/b;->p:I

    return v0
.end method

.method static synthetic m(LThirdParty/b/b;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LThirdParty/b/b;->q:I

    return v0
.end method

.method static synthetic n(LThirdParty/b/b;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LThirdParty/b/b;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic o(LThirdParty/b/b;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LThirdParty/b/b;->i:I

    return v0
.end method

.method static synthetic p(LThirdParty/b/b;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, LThirdParty/b/b;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic q(LThirdParty/b/b;)I
    .locals 2

    .prologue
    .line 61
    iget v0, p0, LThirdParty/b/b;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LThirdParty/b/b;->i:I

    return v0
.end method

.method static synthetic r(LThirdParty/b/b;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, LThirdParty/b/b;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic s(LThirdParty/b/b;)LThirdParty/b/b$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, LThirdParty/b/b;->d:LThirdParty/b/b$a;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 204
    iput p1, v0, Landroid/os/Message;->what:I

    .line 205
    invoke-virtual {p0, v0}, LThirdParty/b/b;->a(Landroid/os/Message;)V

    .line 206
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 211
    iput p1, v0, Landroid/os/Message;->what:I

    .line 212
    iget-object v1, p0, LThirdParty/b/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 213
    return-void
.end method

.method public a(LThirdParty/b/b$a;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, LThirdParty/b/b;->d:LThirdParty/b/b$a;

    .line 892
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, LThirdParty/b/b;->e:Landroid/app/Activity;

    .line 168
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const v3, 0xf000

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    .line 191
    and-int v1, v0, v3

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    .line 193
    iget-object v0, p0, LThirdParty/b/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    and-int/2addr v0, v3

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, LThirdParty/b/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;)V
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    iput-object v0, p0, LThirdParty/b/b;->g:Lcom/google/api/client/http/HttpTransport;

    .line 173
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    iput-object v0, p0, LThirdParty/b/b;->h:Lcom/google/api/client/json/JsonFactory;

    .line 174
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Builder;

    iget-object v1, p0, LThirdParty/b/b;->g:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, LThirdParty/b/b;->h:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/api/services/youtube/YouTube$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string v1, "WatchMe"

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/api/services/youtube/YouTube$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/api/services/youtube/YouTube$Builder;->build()Lcom/google/api/services/youtube/YouTube;

    move-result-object v0

    iput-object v0, p0, LThirdParty/b/b;->f:Lcom/google/api/services/youtube/YouTube;

    .line 178
    invoke-direct {p0}, LThirdParty/b/b;->b()V

    .line 179
    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LThirdParty/b/b;->a(II)V

    .line 180
    return-void
.end method
