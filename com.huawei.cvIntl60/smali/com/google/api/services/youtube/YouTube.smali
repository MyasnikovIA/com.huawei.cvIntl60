.class public Lcom/google/api/services/youtube/YouTube;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$Builder;,
        Lcom/google/api/services/youtube/YouTube$Watermarks;,
        Lcom/google/api/services/youtube/YouTube$Videos;,
        Lcom/google/api/services/youtube/YouTube$VideoCategories;,
        Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;,
        Lcom/google/api/services/youtube/YouTube$Thumbnails;,
        Lcom/google/api/services/youtube/YouTube$Subscriptions;,
        Lcom/google/api/services/youtube/YouTube$Sponsors;,
        Lcom/google/api/services/youtube/YouTube$Search;,
        Lcom/google/api/services/youtube/YouTube$Playlists;,
        Lcom/google/api/services/youtube/YouTube$PlaylistItems;,
        Lcom/google/api/services/youtube/YouTube$LiveStreams;,
        Lcom/google/api/services/youtube/YouTube$LiveChatModerators;,
        Lcom/google/api/services/youtube/YouTube$LiveChatMessages;,
        Lcom/google/api/services/youtube/YouTube$LiveChatBans;,
        Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;,
        Lcom/google/api/services/youtube/YouTube$I18nRegions;,
        Lcom/google/api/services/youtube/YouTube$I18nLanguages;,
        Lcom/google/api/services/youtube/YouTube$GuideCategories;,
        Lcom/google/api/services/youtube/YouTube$FanFundingEvents;,
        Lcom/google/api/services/youtube/YouTube$Comments;,
        Lcom/google/api/services/youtube/YouTube$CommentThreads;,
        Lcom/google/api/services/youtube/YouTube$Channels;,
        Lcom/google/api/services/youtube/YouTube$ChannelSections;,
        Lcom/google/api/services/youtube/YouTube$ChannelBanners;,
        Lcom/google/api/services/youtube/YouTube$Captions;,
        Lcom/google/api/services/youtube/YouTube$Activities;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://www.googleapis.com/youtube/v3/"

.field public static final DEFAULT_ROOT_URL:Ljava/lang/String; = "https://www.googleapis.com/"

.field public static final DEFAULT_SERVICE_PATH:Ljava/lang/String; = "youtube/v3/"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    sget-object v0, Lcom/google/api/client/googleapis/GoogleUtils;->MAJOR_VERSION:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/api/client/googleapis/GoogleUtils;->MINOR_VERSION:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.22.0 of the YouTube Data API library."

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/google/api/client/googleapis/GoogleUtils;->VERSION:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/api/client/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Builder;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/api/services/youtube/YouTube$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    invoke-direct {p0, v0}, Lcom/google/api/services/youtube/YouTube;-><init>(Lcom/google/api/services/youtube/YouTube$Builder;)V

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/google/api/services/youtube/YouTube$Builder;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;-><init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;)V

    .line 114
    return-void
.end method


# virtual methods
.method public activities()Lcom/google/api/services/youtube/YouTube$Activities;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Activities;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Activities;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public captions()Lcom/google/api/services/youtube/YouTube$Captions;
    .locals 1

    .prologue
    .line 629
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Captions;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Captions;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public channelBanners()Lcom/google/api/services/youtube/YouTube$ChannelBanners;
    .locals 1

    .prologue
    .line 1830
    new-instance v0, Lcom/google/api/services/youtube/YouTube$ChannelBanners;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$ChannelBanners;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public channelSections()Lcom/google/api/services/youtube/YouTube$ChannelSections;
    .locals 1

    .prologue
    .line 2051
    new-instance v0, Lcom/google/api/services/youtube/YouTube$ChannelSections;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$ChannelSections;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public channels()Lcom/google/api/services/youtube/YouTube$Channels;
    .locals 1

    .prologue
    .line 2900
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Channels;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Channels;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public commentThreads()Lcom/google/api/services/youtube/YouTube$CommentThreads;
    .locals 1

    .prologue
    .line 3505
    new-instance v0, Lcom/google/api/services/youtube/YouTube$CommentThreads;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$CommentThreads;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public comments()Lcom/google/api/services/youtube/YouTube$Comments;
    .locals 1

    .prologue
    .line 4131
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Comments;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Comments;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public fanFundingEvents()Lcom/google/api/services/youtube/YouTube$FanFundingEvents;
    .locals 1

    .prologue
    .line 5015
    new-instance v0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public guideCategories()Lcom/google/api/services/youtube/YouTube$GuideCategories;
    .locals 1

    .prologue
    .line 5241
    new-instance v0, Lcom/google/api/services/youtube/YouTube$GuideCategories;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$GuideCategories;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public i18nLanguages()Lcom/google/api/services/youtube/YouTube$I18nLanguages;
    .locals 1

    .prologue
    .line 5450
    new-instance v0, Lcom/google/api/services/youtube/YouTube$I18nLanguages;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$I18nLanguages;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public i18nRegions()Lcom/google/api/services/youtube/YouTube$I18nRegions;
    .locals 1

    .prologue
    .line 5610
    new-instance v0, Lcom/google/api/services/youtube/YouTube$I18nRegions;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$I18nRegions;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method protected initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 119
    return-void
.end method

.method public liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;
    .locals 1

    .prologue
    .line 5770
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public liveChatBans()Lcom/google/api/services/youtube/YouTube$LiveChatBans;
    .locals 1

    .prologue
    .line 7751
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveChatBans;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$LiveChatBans;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public liveChatMessages()Lcom/google/api/services/youtube/YouTube$LiveChatMessages;
    .locals 1

    .prologue
    .line 7989
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public liveChatModerators()Lcom/google/api/services/youtube/YouTube$LiveChatModerators;
    .locals 1

    .prologue
    .line 8470
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveChatModerators;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$LiveChatModerators;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public liveStreams()Lcom/google/api/services/youtube/YouTube$LiveStreams;
    .locals 1

    .prologue
    .line 8897
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveStreams;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$LiveStreams;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public playlistItems()Lcom/google/api/services/youtube/YouTube$PlaylistItems;
    .locals 1

    .prologue
    .line 9929
    new-instance v0, Lcom/google/api/services/youtube/YouTube$PlaylistItems;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$PlaylistItems;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public playlists()Lcom/google/api/services/youtube/YouTube$Playlists;
    .locals 1

    .prologue
    .line 10664
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Playlists;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Playlists;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public search()Lcom/google/api/services/youtube/YouTube$Search;
    .locals 1

    .prologue
    .line 11616
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Search;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Search;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public sponsors()Lcom/google/api/services/youtube/YouTube$Sponsors;
    .locals 1

    .prologue
    .line 12591
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Sponsors;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Sponsors;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public subscriptions()Lcom/google/api/services/youtube/YouTube$Subscriptions;
    .locals 1

    .prologue
    .line 12793
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Subscriptions;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Subscriptions;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public thumbnails()Lcom/google/api/services/youtube/YouTube$Thumbnails;
    .locals 1

    .prologue
    .line 13483
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Thumbnails;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Thumbnails;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public videoAbuseReportReasons()Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;
    .locals 1

    .prologue
    .line 13703
    new-instance v0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public videoCategories()Lcom/google/api/services/youtube/YouTube$VideoCategories;
    .locals 1

    .prologue
    .line 13863
    new-instance v0, Lcom/google/api/services/youtube/YouTube$VideoCategories;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$VideoCategories;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public videos()Lcom/google/api/services/youtube/YouTube$Videos;
    .locals 1

    .prologue
    .line 14069
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Videos;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Videos;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public watermarks()Lcom/google/api/services/youtube/YouTube$Watermarks;
    .locals 1

    .prologue
    .line 15698
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Watermarks;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Watermarks;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method
