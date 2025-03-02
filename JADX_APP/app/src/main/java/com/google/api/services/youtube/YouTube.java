package com.google.api.services.youtube;

import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.googleapis.services.AbstractGoogleClientRequest;
import com.google.api.client.googleapis.services.GoogleClientRequestInitializer;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient;
import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Data;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import com.google.api.services.youtube.model.Activity;
import com.google.api.services.youtube.model.ActivityListResponse;
import com.google.api.services.youtube.model.Caption;
import com.google.api.services.youtube.model.CaptionListResponse;
import com.google.api.services.youtube.model.Channel;
import com.google.api.services.youtube.model.ChannelBannerResource;
import com.google.api.services.youtube.model.ChannelListResponse;
import com.google.api.services.youtube.model.ChannelSection;
import com.google.api.services.youtube.model.ChannelSectionListResponse;
import com.google.api.services.youtube.model.Comment;
import com.google.api.services.youtube.model.CommentListResponse;
import com.google.api.services.youtube.model.CommentThread;
import com.google.api.services.youtube.model.CommentThreadListResponse;
import com.google.api.services.youtube.model.FanFundingEventListResponse;
import com.google.api.services.youtube.model.GuideCategoryListResponse;
import com.google.api.services.youtube.model.I18nLanguageListResponse;
import com.google.api.services.youtube.model.I18nRegionListResponse;
import com.google.api.services.youtube.model.InvideoBranding;
import com.google.api.services.youtube.model.LiveBroadcast;
import com.google.api.services.youtube.model.LiveBroadcastListResponse;
import com.google.api.services.youtube.model.LiveChatBan;
import com.google.api.services.youtube.model.LiveChatMessage;
import com.google.api.services.youtube.model.LiveChatMessageListResponse;
import com.google.api.services.youtube.model.LiveChatModerator;
import com.google.api.services.youtube.model.LiveChatModeratorListResponse;
import com.google.api.services.youtube.model.LiveStream;
import com.google.api.services.youtube.model.LiveStreamListResponse;
import com.google.api.services.youtube.model.Playlist;
import com.google.api.services.youtube.model.PlaylistItem;
import com.google.api.services.youtube.model.PlaylistItemListResponse;
import com.google.api.services.youtube.model.PlaylistListResponse;
import com.google.api.services.youtube.model.SearchListResponse;
import com.google.api.services.youtube.model.SponsorListResponse;
import com.google.api.services.youtube.model.Subscription;
import com.google.api.services.youtube.model.SubscriptionListResponse;
import com.google.api.services.youtube.model.ThumbnailSetResponse;
import com.google.api.services.youtube.model.Video;
import com.google.api.services.youtube.model.VideoAbuseReport;
import com.google.api.services.youtube.model.VideoAbuseReportReasonListResponse;
import com.google.api.services.youtube.model.VideoCategoryListResponse;
import com.google.api.services.youtube.model.VideoGetRatingResponse;
import com.google.api.services.youtube.model.VideoListResponse;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class YouTube extends AbstractGoogleJsonClient {
    public static final String DEFAULT_BASE_URL = "https://www.googleapis.com/youtube/v3/";
    public static final String DEFAULT_ROOT_URL = "https://www.googleapis.com/";
    public static final String DEFAULT_SERVICE_PATH = "youtube/v3/";

    static {
        Preconditions.checkState(GoogleUtils.MAJOR_VERSION.intValue() == 1 && GoogleUtils.MINOR_VERSION.intValue() >= 15, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.22.0 of the YouTube Data API library.", GoogleUtils.VERSION);
    }

    public YouTube(HttpTransport httpTransport, JsonFactory jsonFactory, HttpRequestInitializer httpRequestInitializer) {
        this(new Builder(httpTransport, jsonFactory, httpRequestInitializer));
    }

    YouTube(Builder builder) {
        super(builder);
    }

    @Override // com.google.api.client.googleapis.services.AbstractGoogleClient
    protected void initialize(AbstractGoogleClientRequest<?> abstractGoogleClientRequest) {
        super.initialize(abstractGoogleClientRequest);
    }

    public Activities activities() {
        return new Activities();
    }

    public class Activities {
        public Activities() {
        }

        public Insert insert(String str, Activity activity) {
            Insert insert = new Insert(str, activity);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<Activity> {
            private static final String REST_PATH = "activities";

            @Key
            private String part;

            protected Insert(String str, Activity activity) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, activity, Activity.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Activity> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Activity> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Activity> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Activity> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Activity> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Activity> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Activity> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<ActivityListResponse> {
            private static final String REST_PATH = "activities";

            @Key
            private String channelId;

            @Key
            private Boolean home;

            @Key
            private Long maxResults;

            @Key
            private Boolean mine;

            @Key
            private String pageToken;

            @Key
            private String part;

            @Key
            private DateTime publishedAfter;

            @Key
            private DateTime publishedBefore;

            @Key
            private String regionCode;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, ActivityListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ActivityListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ActivityListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ActivityListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ActivityListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ActivityListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ActivityListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ActivityListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getChannelId() {
                return this.channelId;
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            public Boolean getHome() {
                return this.home;
            }

            public List setHome(Boolean bool) {
                this.home = bool;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public DateTime getPublishedAfter() {
                return this.publishedAfter;
            }

            public List setPublishedAfter(DateTime dateTime) {
                this.publishedAfter = dateTime;
                return this;
            }

            public DateTime getPublishedBefore() {
                return this.publishedBefore;
            }

            public List setPublishedBefore(DateTime dateTime) {
                this.publishedBefore = dateTime;
                return this;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            public List setRegionCode(String str) {
                this.regionCode = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public Captions captions() {
        return new Captions();
    }

    public class Captions {
        public Captions() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "captions";

            /* renamed from: id */
            @Key
            private String f6956id;

            @Key
            private String onBehalfOf;

            @Key
            private String onBehalfOfContentOwner;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6956id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6956id;
            }

            public Delete setId(String str) {
                this.f6956id = str;
                return this;
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public Delete setOnBehalfOf(String str) {
                this.onBehalfOf = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Download download(String str) {
            Download download = new Download(str);
            YouTube.this.initialize(download);
            return download;
        }

        public class Download extends YouTubeRequest<Void> {
            private static final String REST_PATH = "captions/{id}";

            /* renamed from: id */
            @Key
            private String f6957id;

            @Key
            private String onBehalfOf;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String tfmt;

            @Key
            private String tlang;

            protected Download(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, Void.class);
                this.f6957id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
                initializeMediaDownload();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public void executeMediaAndDownloadTo(OutputStream outputStream) {
                super.executeMediaAndDownloadTo(outputStream);
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public InputStream executeMediaAsInputStream() {
                return super.executeMediaAsInputStream();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeMedia() {
                return super.executeMedia();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Download) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Download) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Download) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Download) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Download) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Download) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Download) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6957id;
            }

            public Download setId(String str) {
                this.f6957id = str;
                return this;
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public Download setOnBehalfOf(String str) {
                this.onBehalfOf = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Download setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getTfmt() {
                return this.tfmt;
            }

            public Download setTfmt(String str) {
                this.tfmt = str;
                return this;
            }

            public String getTlang() {
                return this.tlang;
            }

            public Download setTlang(String str) {
                this.tlang = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Download set(String str, Object obj) {
                return (Download) super.set(str, obj);
            }
        }

        public Insert insert(String str, Caption caption) {
            Insert insert = new Insert(str, caption);
            YouTube.this.initialize(insert);
            return insert;
        }

        public Insert insert(String str, Caption caption, AbstractInputStreamContent abstractInputStreamContent) {
            Insert insert = new Insert(str, caption, abstractInputStreamContent);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<Caption> {
            private static final String REST_PATH = "captions";

            @Key
            private String onBehalfOf;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String part;

            @Key
            private Boolean sync;

            protected Insert(String str, Caption caption) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, caption, Caption.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            protected Insert(String str, Caption caption, AbstractInputStreamContent abstractInputStreamContent) {
                super(YouTube.this, HttpMethods.POST, "/upload/" + YouTube.this.getServicePath() + REST_PATH, caption, Caption.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
                initializeMediaUpload(abstractInputStreamContent);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Caption> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Caption> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Caption> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Caption> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Caption> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Caption> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Caption> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public Insert setOnBehalfOf(String str) {
                this.onBehalfOf = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Boolean getSync() {
                return this.sync;
            }

            public Insert setSync(Boolean bool) {
                this.sync = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str, String str2) {
            List list = new List(str, str2);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<CaptionListResponse> {
            private static final String REST_PATH = "captions";

            /* renamed from: id */
            @Key
            private String f6958id;

            @Key
            private String onBehalfOf;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String part;

            @Key
            private String videoId;

            protected List(String str, String str2) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, CaptionListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
                this.videoId = (String) Preconditions.checkNotNull(str2, "Required parameter videoId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<CaptionListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<CaptionListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<CaptionListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<CaptionListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<CaptionListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<CaptionListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<CaptionListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getVideoId() {
                return this.videoId;
            }

            public List setVideoId(String str) {
                this.videoId = str;
                return this;
            }

            public String getId() {
                return this.f6958id;
            }

            public List setId(String str) {
                this.f6958id = str;
                return this;
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public List setOnBehalfOf(String str) {
                this.onBehalfOf = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }

        public Update update(String str, Caption caption) {
            Update update = new Update(str, caption);
            YouTube.this.initialize(update);
            return update;
        }

        public Update update(String str, Caption caption, AbstractInputStreamContent abstractInputStreamContent) {
            Update update = new Update(str, caption, abstractInputStreamContent);
            YouTube.this.initialize(update);
            return update;
        }

        public class Update extends YouTubeRequest<Caption> {
            private static final String REST_PATH = "captions";

            @Key
            private String onBehalfOf;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String part;

            @Key
            private Boolean sync;

            protected Update(String str, Caption caption) {
                super(YouTube.this, HttpMethods.PUT, REST_PATH, caption, Caption.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
                checkRequiredParameter(caption, "content");
                checkRequiredParameter(caption.getId(), "Caption.getId()");
            }

            protected Update(String str, Caption caption, AbstractInputStreamContent abstractInputStreamContent) {
                super(YouTube.this, HttpMethods.PUT, "/upload/" + YouTube.this.getServicePath() + REST_PATH, caption, Caption.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
                initializeMediaUpload(abstractInputStreamContent);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Caption> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Caption> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Caption> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Caption> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Caption> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Caption> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Caption> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public Update setOnBehalfOf(String str) {
                this.onBehalfOf = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Boolean getSync() {
                return this.sync;
            }

            public Update setSync(Boolean bool) {
                this.sync = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }
        }
    }

    public ChannelBanners channelBanners() {
        return new ChannelBanners();
    }

    public class ChannelBanners {
        public ChannelBanners() {
        }

        public Insert insert(ChannelBannerResource channelBannerResource) {
            Insert insert = new Insert(channelBannerResource);
            YouTube.this.initialize(insert);
            return insert;
        }

        public Insert insert(ChannelBannerResource channelBannerResource, AbstractInputStreamContent abstractInputStreamContent) {
            Insert insert = new Insert(channelBannerResource, abstractInputStreamContent);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<ChannelBannerResource> {
            private static final String REST_PATH = "channelBanners/insert";

            @Key
            private String onBehalfOfContentOwner;

            protected Insert(ChannelBannerResource channelBannerResource) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, channelBannerResource, ChannelBannerResource.class);
            }

            protected Insert(ChannelBannerResource channelBannerResource, AbstractInputStreamContent abstractInputStreamContent) {
                super(YouTube.this, HttpMethods.POST, "/upload/" + YouTube.this.getServicePath() + REST_PATH, channelBannerResource, ChannelBannerResource.class);
                initializeMediaUpload(abstractInputStreamContent);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ChannelBannerResource> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ChannelBannerResource> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ChannelBannerResource> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ChannelBannerResource> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ChannelBannerResource> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ChannelBannerResource> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ChannelBannerResource> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }
    }

    public ChannelSections channelSections() {
        return new ChannelSections();
    }

    public class ChannelSections {
        public ChannelSections() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "channelSections";

            /* renamed from: id */
            @Key
            private String f6959id;

            @Key
            private String onBehalfOfContentOwner;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6959id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6959id;
            }

            public Delete setId(String str) {
                this.f6959id = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Insert insert(String str, ChannelSection channelSection) {
            Insert insert = new Insert(str, channelSection);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<ChannelSection> {
            private static final String REST_PATH = "channelSections";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String part;

            protected Insert(String str, ChannelSection channelSection) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, channelSection, ChannelSection.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ChannelSection> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ChannelSection> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ChannelSection> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ChannelSection> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ChannelSection> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ChannelSection> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ChannelSection> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Insert setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<ChannelSectionListResponse> {
            private static final String REST_PATH = "channelSections";

            @Key
            private String channelId;

            /* renamed from: hl */
            @Key
            private String f6960hl;

            /* renamed from: id */
            @Key
            private String f6961id;

            @Key
            private Boolean mine;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, ChannelSectionListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ChannelSectionListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ChannelSectionListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ChannelSectionListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ChannelSectionListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ChannelSectionListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ChannelSectionListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ChannelSectionListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getChannelId() {
                return this.channelId;
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            public String getHl() {
                return this.f6960hl;
            }

            public List setHl(String str) {
                this.f6960hl = str;
                return this;
            }

            public String getId() {
                return this.f6961id;
            }

            public List setId(String str) {
                this.f6961id = str;
                return this;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }

        public Update update(String str, ChannelSection channelSection) {
            Update update = new Update(str, channelSection);
            YouTube.this.initialize(update);
            return update;
        }

        public class Update extends YouTubeRequest<ChannelSection> {
            private static final String REST_PATH = "channelSections";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String part;

            protected Update(String str, ChannelSection channelSection) {
                super(YouTube.this, HttpMethods.PUT, REST_PATH, channelSection, ChannelSection.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ChannelSection> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ChannelSection> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ChannelSection> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ChannelSection> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ChannelSection> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ChannelSection> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ChannelSection> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }
        }
    }

    public Channels channels() {
        return new Channels();
    }

    public class Channels {
        public Channels() {
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<ChannelListResponse> {
            private static final String REST_PATH = "channels";

            @Key
            private String categoryId;

            @Key
            private String forUsername;

            /* renamed from: hl */
            @Key
            private String f6962hl;

            /* renamed from: id */
            @Key
            private String f6963id;

            @Key
            private Boolean managedByMe;

            @Key
            private Long maxResults;

            @Key
            private Boolean mine;

            @Key
            private Boolean mySubscribers;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String pageToken;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, ChannelListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ChannelListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ChannelListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ChannelListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ChannelListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ChannelListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ChannelListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ChannelListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getCategoryId() {
                return this.categoryId;
            }

            public List setCategoryId(String str) {
                this.categoryId = str;
                return this;
            }

            public String getForUsername() {
                return this.forUsername;
            }

            public List setForUsername(String str) {
                this.forUsername = str;
                return this;
            }

            public String getHl() {
                return this.f6962hl;
            }

            public List setHl(String str) {
                this.f6962hl = str;
                return this;
            }

            public String getId() {
                return this.f6963id;
            }

            public List setId(String str) {
                this.f6963id = str;
                return this;
            }

            public Boolean getManagedByMe() {
                return this.managedByMe;
            }

            public List setManagedByMe(Boolean bool) {
                this.managedByMe = bool;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            public Boolean getMySubscribers() {
                return this.mySubscribers;
            }

            public List setMySubscribers(Boolean bool) {
                this.mySubscribers = bool;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }

        public Update update(String str, Channel channel) {
            Update update = new Update(str, channel);
            YouTube.this.initialize(update);
            return update;
        }

        public class Update extends YouTubeRequest<Channel> {
            private static final String REST_PATH = "channels";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String part;

            protected Update(String str, Channel channel) {
                super(YouTube.this, HttpMethods.PUT, REST_PATH, channel, Channel.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Channel> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Channel> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Channel> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Channel> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Channel> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Channel> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Channel> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }
        }
    }

    public CommentThreads commentThreads() {
        return new CommentThreads();
    }

    public class CommentThreads {
        public CommentThreads() {
        }

        public Insert insert(String str, CommentThread commentThread) {
            Insert insert = new Insert(str, commentThread);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<CommentThread> {
            private static final String REST_PATH = "commentThreads";

            @Key
            private String part;

            protected Insert(String str, CommentThread commentThread) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, commentThread, CommentThread.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<CommentThread> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<CommentThread> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<CommentThread> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<CommentThread> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<CommentThread> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<CommentThread> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<CommentThread> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<CommentThreadListResponse> {
            private static final String REST_PATH = "commentThreads";

            @Key
            private String allThreadsRelatedToChannelId;

            @Key
            private String channelId;

            /* renamed from: id */
            @Key
            private String f6964id;

            @Key
            private Long maxResults;

            @Key
            private String moderationStatus;

            @Key
            private String order;

            @Key
            private String pageToken;

            @Key
            private String part;

            @Key
            private String searchTerms;

            @Key
            private String textFormat;

            @Key
            private String videoId;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, CommentThreadListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<CommentThreadListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<CommentThreadListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<CommentThreadListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<CommentThreadListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<CommentThreadListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<CommentThreadListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<CommentThreadListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getAllThreadsRelatedToChannelId() {
                return this.allThreadsRelatedToChannelId;
            }

            public List setAllThreadsRelatedToChannelId(String str) {
                this.allThreadsRelatedToChannelId = str;
                return this;
            }

            public String getChannelId() {
                return this.channelId;
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            public String getId() {
                return this.f6964id;
            }

            public List setId(String str) {
                this.f6964id = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public String getModerationStatus() {
                return this.moderationStatus;
            }

            public List setModerationStatus(String str) {
                this.moderationStatus = str;
                return this;
            }

            public String getOrder() {
                return this.order;
            }

            public List setOrder(String str) {
                this.order = str;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public String getSearchTerms() {
                return this.searchTerms;
            }

            public List setSearchTerms(String str) {
                this.searchTerms = str;
                return this;
            }

            public String getTextFormat() {
                return this.textFormat;
            }

            public List setTextFormat(String str) {
                this.textFormat = str;
                return this;
            }

            public String getVideoId() {
                return this.videoId;
            }

            public List setVideoId(String str) {
                this.videoId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }

        public Update update(String str, CommentThread commentThread) {
            Update update = new Update(str, commentThread);
            YouTube.this.initialize(update);
            return update;
        }

        public class Update extends YouTubeRequest<CommentThread> {
            private static final String REST_PATH = "commentThreads";

            @Key
            private String part;

            protected Update(String str, CommentThread commentThread) {
                super(YouTube.this, HttpMethods.PUT, REST_PATH, commentThread, CommentThread.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<CommentThread> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<CommentThread> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<CommentThread> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<CommentThread> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<CommentThread> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<CommentThread> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<CommentThread> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }
        }
    }

    public Comments comments() {
        return new Comments();
    }

    public class Comments {
        public Comments() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "comments";

            /* renamed from: id */
            @Key
            private String f6965id;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6965id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6965id;
            }

            public Delete setId(String str) {
                this.f6965id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Insert insert(String str, Comment comment) {
            Insert insert = new Insert(str, comment);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<Comment> {
            private static final String REST_PATH = "comments";

            @Key
            private String part;

            protected Insert(String str, Comment comment) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, comment, Comment.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Comment> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Comment> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Comment> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Comment> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Comment> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Comment> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Comment> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<CommentListResponse> {
            private static final String REST_PATH = "comments";

            /* renamed from: id */
            @Key
            private String f6966id;

            @Key
            private Long maxResults;

            @Key
            private String pageToken;

            @Key
            private String parentId;

            @Key
            private String part;

            @Key
            private String textFormat;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, CommentListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<CommentListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<CommentListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<CommentListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<CommentListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<CommentListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<CommentListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<CommentListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getId() {
                return this.f6966id;
            }

            public List setId(String str) {
                this.f6966id = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public String getParentId() {
                return this.parentId;
            }

            public List setParentId(String str) {
                this.parentId = str;
                return this;
            }

            public String getTextFormat() {
                return this.textFormat;
            }

            public List setTextFormat(String str) {
                this.textFormat = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }

        public MarkAsSpam markAsSpam(String str) {
            MarkAsSpam markAsSpam = new MarkAsSpam(str);
            YouTube.this.initialize(markAsSpam);
            return markAsSpam;
        }

        public class MarkAsSpam extends YouTubeRequest<Void> {
            private static final String REST_PATH = "comments/markAsSpam";

            /* renamed from: id */
            @Key
            private String f6967id;

            protected MarkAsSpam(String str) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, null, Void.class);
                this.f6967id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (MarkAsSpam) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (MarkAsSpam) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (MarkAsSpam) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (MarkAsSpam) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (MarkAsSpam) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (MarkAsSpam) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (MarkAsSpam) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6967id;
            }

            public MarkAsSpam setId(String str) {
                this.f6967id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public MarkAsSpam set(String str, Object obj) {
                return (MarkAsSpam) super.set(str, obj);
            }
        }

        public SetModerationStatus setModerationStatus(String str, String str2) {
            SetModerationStatus setModerationStatus = new SetModerationStatus(str, str2);
            YouTube.this.initialize(setModerationStatus);
            return setModerationStatus;
        }

        public class SetModerationStatus extends YouTubeRequest<Void> {
            private static final String REST_PATH = "comments/setModerationStatus";

            @Key
            private Boolean banAuthor;

            /* renamed from: id */
            @Key
            private String f6968id;

            @Key
            private String moderationStatus;

            protected SetModerationStatus(String str, String str2) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, null, Void.class);
                this.f6968id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
                this.moderationStatus = (String) Preconditions.checkNotNull(str2, "Required parameter moderationStatus must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (SetModerationStatus) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (SetModerationStatus) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (SetModerationStatus) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (SetModerationStatus) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (SetModerationStatus) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (SetModerationStatus) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (SetModerationStatus) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6968id;
            }

            public SetModerationStatus setId(String str) {
                this.f6968id = str;
                return this;
            }

            public String getModerationStatus() {
                return this.moderationStatus;
            }

            public SetModerationStatus setModerationStatus(String str) {
                this.moderationStatus = str;
                return this;
            }

            public Boolean getBanAuthor() {
                return this.banAuthor;
            }

            public SetModerationStatus setBanAuthor(Boolean bool) {
                this.banAuthor = bool;
                return this;
            }

            public boolean isBanAuthor() {
                if (this.banAuthor == null || this.banAuthor == Data.NULL_BOOLEAN) {
                    return false;
                }
                return this.banAuthor.booleanValue();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public SetModerationStatus set(String str, Object obj) {
                return (SetModerationStatus) super.set(str, obj);
            }
        }

        public Update update(String str, Comment comment) {
            Update update = new Update(str, comment);
            YouTube.this.initialize(update);
            return update;
        }

        public class Update extends YouTubeRequest<Comment> {
            private static final String REST_PATH = "comments";

            @Key
            private String part;

            protected Update(String str, Comment comment) {
                super(YouTube.this, HttpMethods.PUT, REST_PATH, comment, Comment.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Comment> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Comment> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Comment> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Comment> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Comment> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Comment> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Comment> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }
        }
    }

    public FanFundingEvents fanFundingEvents() {
        return new FanFundingEvents();
    }

    public class FanFundingEvents {
        public FanFundingEvents() {
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<FanFundingEventListResponse> {
            private static final String REST_PATH = "fanFundingEvents";

            /* renamed from: hl */
            @Key
            private String f6969hl;

            @Key
            private Long maxResults;

            @Key
            private String pageToken;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, FanFundingEventListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<FanFundingEventListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<FanFundingEventListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<FanFundingEventListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<FanFundingEventListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<FanFundingEventListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<FanFundingEventListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<FanFundingEventListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getHl() {
                return this.f6969hl;
            }

            public List setHl(String str) {
                this.f6969hl = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public GuideCategories guideCategories() {
        return new GuideCategories();
    }

    public class GuideCategories {
        public GuideCategories() {
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<GuideCategoryListResponse> {
            private static final String REST_PATH = "guideCategories";

            /* renamed from: hl */
            @Key
            private String f6970hl;

            /* renamed from: id */
            @Key
            private String f6971id;

            @Key
            private String part;

            @Key
            private String regionCode;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, GuideCategoryListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<GuideCategoryListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<GuideCategoryListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<GuideCategoryListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<GuideCategoryListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<GuideCategoryListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<GuideCategoryListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<GuideCategoryListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getHl() {
                return this.f6970hl;
            }

            public List setHl(String str) {
                this.f6970hl = str;
                return this;
            }

            public String getId() {
                return this.f6971id;
            }

            public List setId(String str) {
                this.f6971id = str;
                return this;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            public List setRegionCode(String str) {
                this.regionCode = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public I18nLanguages i18nLanguages() {
        return new I18nLanguages();
    }

    public class I18nLanguages {
        public I18nLanguages() {
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<I18nLanguageListResponse> {
            private static final String REST_PATH = "i18nLanguages";

            /* renamed from: hl */
            @Key
            private String f6972hl;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, I18nLanguageListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<I18nLanguageListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<I18nLanguageListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<I18nLanguageListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<I18nLanguageListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<I18nLanguageListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<I18nLanguageListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<I18nLanguageListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getHl() {
                return this.f6972hl;
            }

            public List setHl(String str) {
                this.f6972hl = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public I18nRegions i18nRegions() {
        return new I18nRegions();
    }

    public class I18nRegions {
        public I18nRegions() {
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<I18nRegionListResponse> {
            private static final String REST_PATH = "i18nRegions";

            /* renamed from: hl */
            @Key
            private String f6973hl;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, I18nRegionListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<I18nRegionListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<I18nRegionListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<I18nRegionListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<I18nRegionListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<I18nRegionListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<I18nRegionListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<I18nRegionListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getHl() {
                return this.f6973hl;
            }

            public List setHl(String str) {
                this.f6973hl = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public LiveBroadcasts liveBroadcasts() {
        return new LiveBroadcasts();
    }

    public class LiveBroadcasts {
        public LiveBroadcasts() {
        }

        public Bind bind(String str, String str2) {
            Bind bind = new Bind(str, str2);
            YouTube.this.initialize(bind);
            return bind;
        }

        public class Bind extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts/bind";

            /* renamed from: id */
            @Key
            private String f6974id;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String part;

            @Key
            private String streamId;

            protected Bind(String str, String str2) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, null, LiveBroadcast.class);
                this.f6974id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
                this.part = (String) Preconditions.checkNotNull(str2, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcast> setAlt2(String str) {
                return (Bind) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcast> setFields2(String str) {
                return (Bind) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcast> setKey2(String str) {
                return (Bind) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcast> setOauthToken2(String str) {
                return (Bind) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcast> setPrettyPrint2(Boolean bool) {
                return (Bind) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcast> setQuotaUser2(String str) {
                return (Bind) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcast> setUserIp2(String str) {
                return (Bind) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6974id;
            }

            public Bind setId(String str) {
                this.f6974id = str;
                return this;
            }

            public String getPart() {
                return this.part;
            }

            public Bind setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Bind setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Bind setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public String getStreamId() {
                return this.streamId;
            }

            public Bind setStreamId(String str) {
                this.streamId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Bind set(String str, Object obj) {
                return (Bind) super.set(str, obj);
            }
        }

        public Control control(String str, String str2) {
            Control control = new Control(str, str2);
            YouTube.this.initialize(control);
            return control;
        }

        public class Control extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts/control";

            @Key
            private Boolean displaySlate;

            /* renamed from: id */
            @Key
            private String f6975id;

            @Key
            private BigInteger offsetTimeMs;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String part;

            @Key
            private DateTime walltime;

            protected Control(String str, String str2) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, null, LiveBroadcast.class);
                this.f6975id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
                this.part = (String) Preconditions.checkNotNull(str2, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcast> setAlt2(String str) {
                return (Control) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcast> setFields2(String str) {
                return (Control) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcast> setKey2(String str) {
                return (Control) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcast> setOauthToken2(String str) {
                return (Control) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcast> setPrettyPrint2(Boolean bool) {
                return (Control) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcast> setQuotaUser2(String str) {
                return (Control) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcast> setUserIp2(String str) {
                return (Control) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6975id;
            }

            public Control setId(String str) {
                this.f6975id = str;
                return this;
            }

            public String getPart() {
                return this.part;
            }

            public Control setPart(String str) {
                this.part = str;
                return this;
            }

            public Boolean getDisplaySlate() {
                return this.displaySlate;
            }

            public Control setDisplaySlate(Boolean bool) {
                this.displaySlate = bool;
                return this;
            }

            public BigInteger getOffsetTimeMs() {
                return this.offsetTimeMs;
            }

            public Control setOffsetTimeMs(BigInteger bigInteger) {
                this.offsetTimeMs = bigInteger;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Control setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Control setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public DateTime getWalltime() {
                return this.walltime;
            }

            public Control setWalltime(DateTime dateTime) {
                this.walltime = dateTime;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Control set(String str, Object obj) {
                return (Control) super.set(str, obj);
            }
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveBroadcasts";

            /* renamed from: id */
            @Key
            private String f6976id;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6976id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6976id;
            }

            public Delete setId(String str) {
                this.f6976id = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Delete setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Insert insert(String str, LiveBroadcast liveBroadcast) {
            Insert insert = new Insert(str, liveBroadcast);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String part;

            protected Insert(String str, LiveBroadcast liveBroadcast) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, liveBroadcast, LiveBroadcast.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcast> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcast> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcast> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcast> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcast> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcast> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcast> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Insert setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<LiveBroadcastListResponse> {
            private static final String REST_PATH = "liveBroadcasts";

            @Key
            private String broadcastStatus;

            @Key
            private String broadcastType;

            /* renamed from: id */
            @Key
            private String f6977id;

            @Key
            private Long maxResults;

            @Key
            private Boolean mine;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String pageToken;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, LiveBroadcastListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcastListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcastListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcastListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcastListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcastListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcastListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcastListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getBroadcastStatus() {
                return this.broadcastStatus;
            }

            public List setBroadcastStatus(String str) {
                this.broadcastStatus = str;
                return this;
            }

            public String getBroadcastType() {
                return this.broadcastType;
            }

            public List setBroadcastType(String str) {
                this.broadcastType = str;
                return this;
            }

            public String getId() {
                return this.f6977id;
            }

            public List setId(String str) {
                this.f6977id = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public List setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }

        public Transition transition(String str, String str2, String str3) {
            Transition transition = new Transition(str, str2, str3);
            YouTube.this.initialize(transition);
            return transition;
        }

        public class Transition extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts/transition";

            @Key
            private String broadcastStatus;

            /* renamed from: id */
            @Key
            private String f6978id;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String part;

            protected Transition(String str, String str2, String str3) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, null, LiveBroadcast.class);
                this.broadcastStatus = (String) Preconditions.checkNotNull(str, "Required parameter broadcastStatus must be specified.");
                this.f6978id = (String) Preconditions.checkNotNull(str2, "Required parameter id must be specified.");
                this.part = (String) Preconditions.checkNotNull(str3, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcast> setAlt2(String str) {
                return (Transition) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcast> setFields2(String str) {
                return (Transition) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcast> setKey2(String str) {
                return (Transition) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcast> setOauthToken2(String str) {
                return (Transition) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcast> setPrettyPrint2(Boolean bool) {
                return (Transition) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcast> setQuotaUser2(String str) {
                return (Transition) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcast> setUserIp2(String str) {
                return (Transition) super.setUserIp2(str);
            }

            public String getBroadcastStatus() {
                return this.broadcastStatus;
            }

            public Transition setBroadcastStatus(String str) {
                this.broadcastStatus = str;
                return this;
            }

            public String getId() {
                return this.f6978id;
            }

            public Transition setId(String str) {
                this.f6978id = str;
                return this;
            }

            public String getPart() {
                return this.part;
            }

            public Transition setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Transition setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Transition setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Transition set(String str, Object obj) {
                return (Transition) super.set(str, obj);
            }
        }

        public Update update(String str, LiveBroadcast liveBroadcast) {
            Update update = new Update(str, liveBroadcast);
            YouTube.this.initialize(update);
            return update;
        }

        public class Update extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String part;

            protected Update(String str, LiveBroadcast liveBroadcast) {
                super(YouTube.this, HttpMethods.PUT, REST_PATH, liveBroadcast, LiveBroadcast.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
                checkRequiredParameter(liveBroadcast, "content");
                checkRequiredParameter(liveBroadcast.getId(), "LiveBroadcast.getId()");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcast> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcast> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcast> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcast> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcast> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcast> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcast> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Update setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }
        }
    }

    public LiveChatBans liveChatBans() {
        return new LiveChatBans();
    }

    public class LiveChatBans {
        public LiveChatBans() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveChat/bans";

            /* renamed from: id */
            @Key
            private String f6979id;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6979id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6979id;
            }

            public Delete setId(String str) {
                this.f6979id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Insert insert(String str, LiveChatBan liveChatBan) {
            Insert insert = new Insert(str, liveChatBan);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<LiveChatBan> {
            private static final String REST_PATH = "liveChat/bans";

            @Key
            private String part;

            protected Insert(String str, LiveChatBan liveChatBan) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, liveChatBan, LiveChatBan.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveChatBan> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveChatBan> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveChatBan> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveChatBan> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveChatBan> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveChatBan> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveChatBan> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }
    }

    public LiveChatMessages liveChatMessages() {
        return new LiveChatMessages();
    }

    public class LiveChatMessages {
        public LiveChatMessages() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveChat/messages";

            /* renamed from: id */
            @Key
            private String f6980id;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6980id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6980id;
            }

            public Delete setId(String str) {
                this.f6980id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Insert insert(String str, LiveChatMessage liveChatMessage) {
            Insert insert = new Insert(str, liveChatMessage);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<LiveChatMessage> {
            private static final String REST_PATH = "liveChat/messages";

            @Key
            private String part;

            protected Insert(String str, LiveChatMessage liveChatMessage) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, liveChatMessage, LiveChatMessage.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveChatMessage> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveChatMessage> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveChatMessage> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveChatMessage> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveChatMessage> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveChatMessage> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveChatMessage> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str, String str2) {
            List list = new List(str, str2);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<LiveChatMessageListResponse> {
            private static final String REST_PATH = "liveChat/messages";

            /* renamed from: hl */
            @Key
            private String f6981hl;

            @Key
            private String liveChatId;

            @Key
            private Long maxResults;

            @Key
            private String pageToken;

            @Key
            private String part;

            @Key
            private Long profileImageSize;

            protected List(String str, String str2) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, LiveChatMessageListResponse.class);
                this.liveChatId = (String) Preconditions.checkNotNull(str, "Required parameter liveChatId must be specified.");
                this.part = (String) Preconditions.checkNotNull(str2, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveChatMessageListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveChatMessageListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveChatMessageListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveChatMessageListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveChatMessageListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveChatMessageListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveChatMessageListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getLiveChatId() {
                return this.liveChatId;
            }

            public List setLiveChatId(String str) {
                this.liveChatId = str;
                return this;
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getHl() {
                return this.f6981hl;
            }

            public List setHl(String str) {
                this.f6981hl = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public Long getProfileImageSize() {
                return this.profileImageSize;
            }

            public List setProfileImageSize(Long l) {
                this.profileImageSize = l;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public LiveChatModerators liveChatModerators() {
        return new LiveChatModerators();
    }

    public class LiveChatModerators {
        public LiveChatModerators() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveChat/moderators";

            /* renamed from: id */
            @Key
            private String f6982id;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6982id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6982id;
            }

            public Delete setId(String str) {
                this.f6982id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Insert insert(String str, LiveChatModerator liveChatModerator) {
            Insert insert = new Insert(str, liveChatModerator);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<LiveChatModerator> {
            private static final String REST_PATH = "liveChat/moderators";

            @Key
            private String part;

            protected Insert(String str, LiveChatModerator liveChatModerator) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, liveChatModerator, LiveChatModerator.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveChatModerator> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveChatModerator> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveChatModerator> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveChatModerator> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveChatModerator> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveChatModerator> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveChatModerator> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str, String str2) {
            List list = new List(str, str2);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<LiveChatModeratorListResponse> {
            private static final String REST_PATH = "liveChat/moderators";

            @Key
            private String liveChatId;

            @Key
            private Long maxResults;

            @Key
            private String pageToken;

            @Key
            private String part;

            protected List(String str, String str2) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, LiveChatModeratorListResponse.class);
                this.liveChatId = (String) Preconditions.checkNotNull(str, "Required parameter liveChatId must be specified.");
                this.part = (String) Preconditions.checkNotNull(str2, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveChatModeratorListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveChatModeratorListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveChatModeratorListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveChatModeratorListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveChatModeratorListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveChatModeratorListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveChatModeratorListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getLiveChatId() {
                return this.liveChatId;
            }

            public List setLiveChatId(String str) {
                this.liveChatId = str;
                return this;
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public LiveStreams liveStreams() {
        return new LiveStreams();
    }

    public class LiveStreams {
        public LiveStreams() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveStreams";

            /* renamed from: id */
            @Key
            private String f6983id;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6983id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6983id;
            }

            public Delete setId(String str) {
                this.f6983id = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Delete setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Insert insert(String str, LiveStream liveStream) {
            Insert insert = new Insert(str, liveStream);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<LiveStream> {
            private static final String REST_PATH = "liveStreams";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String part;

            protected Insert(String str, LiveStream liveStream) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, liveStream, LiveStream.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveStream> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveStream> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveStream> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveStream> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveStream> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveStream> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveStream> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Insert setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<LiveStreamListResponse> {
            private static final String REST_PATH = "liveStreams";

            /* renamed from: id */
            @Key
            private String f6984id;

            @Key
            private Long maxResults;

            @Key
            private Boolean mine;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String pageToken;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, LiveStreamListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveStreamListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveStreamListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveStreamListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveStreamListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveStreamListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveStreamListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveStreamListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getId() {
                return this.f6984id;
            }

            public List setId(String str) {
                this.f6984id = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public List setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }

        public Update update(String str, LiveStream liveStream) {
            Update update = new Update(str, liveStream);
            YouTube.this.initialize(update);
            return update;
        }

        public class Update extends YouTubeRequest<LiveStream> {
            private static final String REST_PATH = "liveStreams";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String part;

            protected Update(String str, LiveStream liveStream) {
                super(YouTube.this, HttpMethods.PUT, REST_PATH, liveStream, LiveStream.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
                checkRequiredParameter(liveStream, "content");
                checkRequiredParameter(liveStream.getId(), "LiveStream.getId()");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveStream> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveStream> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveStream> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveStream> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveStream> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveStream> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveStream> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Update setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }
        }
    }

    public PlaylistItems playlistItems() {
        return new PlaylistItems();
    }

    public class PlaylistItems {
        public PlaylistItems() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "playlistItems";

            /* renamed from: id */
            @Key
            private String f6985id;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6985id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6985id;
            }

            public Delete setId(String str) {
                this.f6985id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Insert insert(String str, PlaylistItem playlistItem) {
            Insert insert = new Insert(str, playlistItem);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<PlaylistItem> {
            private static final String REST_PATH = "playlistItems";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String part;

            protected Insert(String str, PlaylistItem playlistItem) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, playlistItem, PlaylistItem.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<PlaylistItem> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<PlaylistItem> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<PlaylistItem> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<PlaylistItem> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<PlaylistItem> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<PlaylistItem> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<PlaylistItem> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<PlaylistItemListResponse> {
            private static final String REST_PATH = "playlistItems";

            /* renamed from: id */
            @Key
            private String f6986id;

            @Key
            private Long maxResults;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String pageToken;

            @Key
            private String part;

            @Key
            private String playlistId;

            @Key
            private String videoId;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, PlaylistItemListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<PlaylistItemListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<PlaylistItemListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<PlaylistItemListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<PlaylistItemListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<PlaylistItemListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<PlaylistItemListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<PlaylistItemListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getId() {
                return this.f6986id;
            }

            public List setId(String str) {
                this.f6986id = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public String getPlaylistId() {
                return this.playlistId;
            }

            public List setPlaylistId(String str) {
                this.playlistId = str;
                return this;
            }

            public String getVideoId() {
                return this.videoId;
            }

            public List setVideoId(String str) {
                this.videoId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }

        public Update update(String str, PlaylistItem playlistItem) {
            Update update = new Update(str, playlistItem);
            YouTube.this.initialize(update);
            return update;
        }

        public class Update extends YouTubeRequest<PlaylistItem> {
            private static final String REST_PATH = "playlistItems";

            @Key
            private String part;

            protected Update(String str, PlaylistItem playlistItem) {
                super(YouTube.this, HttpMethods.PUT, REST_PATH, playlistItem, PlaylistItem.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<PlaylistItem> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<PlaylistItem> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<PlaylistItem> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<PlaylistItem> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<PlaylistItem> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<PlaylistItem> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<PlaylistItem> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }
        }
    }

    public Playlists playlists() {
        return new Playlists();
    }

    public class Playlists {
        public Playlists() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "playlists";

            /* renamed from: id */
            @Key
            private String f6987id;

            @Key
            private String onBehalfOfContentOwner;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6987id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6987id;
            }

            public Delete setId(String str) {
                this.f6987id = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Insert insert(String str, Playlist playlist) {
            Insert insert = new Insert(str, playlist);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<Playlist> {
            private static final String REST_PATH = "playlists";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String part;

            protected Insert(String str, Playlist playlist) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, playlist, Playlist.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Playlist> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Playlist> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Playlist> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Playlist> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Playlist> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Playlist> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Playlist> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Insert setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<PlaylistListResponse> {
            private static final String REST_PATH = "playlists";

            @Key
            private String channelId;

            /* renamed from: hl */
            @Key
            private String f6988hl;

            /* renamed from: id */
            @Key
            private String f6989id;

            @Key
            private Long maxResults;

            @Key
            private Boolean mine;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String pageToken;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, PlaylistListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<PlaylistListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<PlaylistListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<PlaylistListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<PlaylistListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<PlaylistListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<PlaylistListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<PlaylistListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getChannelId() {
                return this.channelId;
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            public String getHl() {
                return this.f6988hl;
            }

            public List setHl(String str) {
                this.f6988hl = str;
                return this;
            }

            public String getId() {
                return this.f6989id;
            }

            public List setId(String str) {
                this.f6989id = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public List setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }

        public Update update(String str, Playlist playlist) {
            Update update = new Update(str, playlist);
            YouTube.this.initialize(update);
            return update;
        }

        public class Update extends YouTubeRequest<Playlist> {
            private static final String REST_PATH = "playlists";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String part;

            protected Update(String str, Playlist playlist) {
                super(YouTube.this, HttpMethods.PUT, REST_PATH, playlist, Playlist.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Playlist> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Playlist> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Playlist> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Playlist> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Playlist> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Playlist> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Playlist> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }
        }
    }

    public Search search() {
        return new Search();
    }

    public class Search {
        public Search() {
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<SearchListResponse> {
            private static final String REST_PATH = "search";

            @Key
            private String channelId;

            @Key
            private String channelType;

            @Key
            private String eventType;

            @Key
            private Boolean forContentOwner;

            @Key
            private Boolean forDeveloper;

            @Key
            private Boolean forMine;

            @Key
            private String location;

            @Key
            private String locationRadius;

            @Key
            private Long maxResults;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String order;

            @Key
            private String pageToken;

            @Key
            private String part;

            @Key
            private DateTime publishedAfter;

            @Key
            private DateTime publishedBefore;

            /* renamed from: q */
            @Key
            private String f6990q;

            @Key
            private String regionCode;

            @Key
            private String relatedToVideoId;

            @Key
            private String relevanceLanguage;

            @Key
            private String safeSearch;

            @Key
            private String topicId;

            @Key
            private String type;

            @Key
            private String videoCaption;

            @Key
            private String videoCategoryId;

            @Key
            private String videoDefinition;

            @Key
            private String videoDimension;

            @Key
            private String videoDuration;

            @Key
            private String videoEmbeddable;

            @Key
            private String videoLicense;

            @Key
            private String videoSyndicated;

            @Key
            private String videoType;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, SearchListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<SearchListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<SearchListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<SearchListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<SearchListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<SearchListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<SearchListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<SearchListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getChannelId() {
                return this.channelId;
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            public String getChannelType() {
                return this.channelType;
            }

            public List setChannelType(String str) {
                this.channelType = str;
                return this;
            }

            public String getEventType() {
                return this.eventType;
            }

            public List setEventType(String str) {
                this.eventType = str;
                return this;
            }

            public Boolean getForContentOwner() {
                return this.forContentOwner;
            }

            public List setForContentOwner(Boolean bool) {
                this.forContentOwner = bool;
                return this;
            }

            public Boolean getForDeveloper() {
                return this.forDeveloper;
            }

            public List setForDeveloper(Boolean bool) {
                this.forDeveloper = bool;
                return this;
            }

            public Boolean getForMine() {
                return this.forMine;
            }

            public List setForMine(Boolean bool) {
                this.forMine = bool;
                return this;
            }

            public String getLocation() {
                return this.location;
            }

            public List setLocation(String str) {
                this.location = str;
                return this;
            }

            public String getLocationRadius() {
                return this.locationRadius;
            }

            public List setLocationRadius(String str) {
                this.locationRadius = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOrder() {
                return this.order;
            }

            public List setOrder(String str) {
                this.order = str;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public DateTime getPublishedAfter() {
                return this.publishedAfter;
            }

            public List setPublishedAfter(DateTime dateTime) {
                this.publishedAfter = dateTime;
                return this;
            }

            public DateTime getPublishedBefore() {
                return this.publishedBefore;
            }

            public List setPublishedBefore(DateTime dateTime) {
                this.publishedBefore = dateTime;
                return this;
            }

            public String getQ() {
                return this.f6990q;
            }

            public List setQ(String str) {
                this.f6990q = str;
                return this;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            public List setRegionCode(String str) {
                this.regionCode = str;
                return this;
            }

            public String getRelatedToVideoId() {
                return this.relatedToVideoId;
            }

            public List setRelatedToVideoId(String str) {
                this.relatedToVideoId = str;
                return this;
            }

            public String getRelevanceLanguage() {
                return this.relevanceLanguage;
            }

            public List setRelevanceLanguage(String str) {
                this.relevanceLanguage = str;
                return this;
            }

            public String getSafeSearch() {
                return this.safeSearch;
            }

            public List setSafeSearch(String str) {
                this.safeSearch = str;
                return this;
            }

            public String getTopicId() {
                return this.topicId;
            }

            public List setTopicId(String str) {
                this.topicId = str;
                return this;
            }

            public String getType() {
                return this.type;
            }

            public List setType(String str) {
                this.type = str;
                return this;
            }

            public String getVideoCaption() {
                return this.videoCaption;
            }

            public List setVideoCaption(String str) {
                this.videoCaption = str;
                return this;
            }

            public String getVideoCategoryId() {
                return this.videoCategoryId;
            }

            public List setVideoCategoryId(String str) {
                this.videoCategoryId = str;
                return this;
            }

            public String getVideoDefinition() {
                return this.videoDefinition;
            }

            public List setVideoDefinition(String str) {
                this.videoDefinition = str;
                return this;
            }

            public String getVideoDimension() {
                return this.videoDimension;
            }

            public List setVideoDimension(String str) {
                this.videoDimension = str;
                return this;
            }

            public String getVideoDuration() {
                return this.videoDuration;
            }

            public List setVideoDuration(String str) {
                this.videoDuration = str;
                return this;
            }

            public String getVideoEmbeddable() {
                return this.videoEmbeddable;
            }

            public List setVideoEmbeddable(String str) {
                this.videoEmbeddable = str;
                return this;
            }

            public String getVideoLicense() {
                return this.videoLicense;
            }

            public List setVideoLicense(String str) {
                this.videoLicense = str;
                return this;
            }

            public String getVideoSyndicated() {
                return this.videoSyndicated;
            }

            public List setVideoSyndicated(String str) {
                this.videoSyndicated = str;
                return this;
            }

            public String getVideoType() {
                return this.videoType;
            }

            public List setVideoType(String str) {
                this.videoType = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public Sponsors sponsors() {
        return new Sponsors();
    }

    public class Sponsors {
        public Sponsors() {
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<SponsorListResponse> {
            private static final String REST_PATH = "sponsors";

            @Key
            private String filter;

            @Key
            private Long maxResults;

            @Key
            private String pageToken;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, SponsorListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<SponsorListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<SponsorListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<SponsorListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<SponsorListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<SponsorListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<SponsorListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<SponsorListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getFilter() {
                return this.filter;
            }

            public List setFilter(String str) {
                this.filter = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public Subscriptions subscriptions() {
        return new Subscriptions();
    }

    public class Subscriptions {
        public Subscriptions() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "subscriptions";

            /* renamed from: id */
            @Key
            private String f6991id;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6991id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6991id;
            }

            public Delete setId(String str) {
                this.f6991id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public Insert insert(String str, Subscription subscription) {
            Insert insert = new Insert(str, subscription);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<Subscription> {
            private static final String REST_PATH = "subscriptions";

            @Key
            private String part;

            protected Insert(String str, Subscription subscription) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, subscription, Subscription.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Subscription> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Subscription> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Subscription> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Subscription> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Subscription> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Subscription> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Subscription> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<SubscriptionListResponse> {
            private static final String REST_PATH = "subscriptions";

            @Key
            private String channelId;

            @Key
            private String forChannelId;

            /* renamed from: id */
            @Key
            private String f6992id;

            @Key
            private Long maxResults;

            @Key
            private Boolean mine;

            @Key
            private Boolean myRecentSubscribers;

            @Key
            private Boolean mySubscribers;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String order;

            @Key
            private String pageToken;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, SubscriptionListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<SubscriptionListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<SubscriptionListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<SubscriptionListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<SubscriptionListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<SubscriptionListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<SubscriptionListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<SubscriptionListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getChannelId() {
                return this.channelId;
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            public String getForChannelId() {
                return this.forChannelId;
            }

            public List setForChannelId(String str) {
                this.forChannelId = str;
                return this;
            }

            public String getId() {
                return this.f6992id;
            }

            public List setId(String str) {
                this.f6992id = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            public Boolean getMyRecentSubscribers() {
                return this.myRecentSubscribers;
            }

            public List setMyRecentSubscribers(Boolean bool) {
                this.myRecentSubscribers = bool;
                return this;
            }

            public Boolean getMySubscribers() {
                return this.mySubscribers;
            }

            public List setMySubscribers(Boolean bool) {
                this.mySubscribers = bool;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public List setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public String getOrder() {
                return this.order;
            }

            public List setOrder(String str) {
                this.order = str;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public Thumbnails thumbnails() {
        return new Thumbnails();
    }

    public class Thumbnails {
        public Thumbnails() {
        }

        public Set set(String str) {
            Set set = new Set(str);
            YouTube.this.initialize(set);
            return set;
        }

        public Set set(String str, AbstractInputStreamContent abstractInputStreamContent) {
            Set set = new Set(str, abstractInputStreamContent);
            YouTube.this.initialize(set);
            return set;
        }

        public class Set extends YouTubeRequest<ThumbnailSetResponse> {
            private static final String REST_PATH = "thumbnails/set";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String videoId;

            protected Set(String str) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, null, ThumbnailSetResponse.class);
                this.videoId = (String) Preconditions.checkNotNull(str, "Required parameter videoId must be specified.");
            }

            protected Set(String str, AbstractInputStreamContent abstractInputStreamContent) {
                super(YouTube.this, HttpMethods.POST, "/upload/" + YouTube.this.getServicePath() + REST_PATH, null, ThumbnailSetResponse.class);
                this.videoId = (String) Preconditions.checkNotNull(str, "Required parameter videoId must be specified.");
                initializeMediaUpload(abstractInputStreamContent);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ThumbnailSetResponse> setAlt2(String str) {
                return (Set) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ThumbnailSetResponse> setFields2(String str) {
                return (Set) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ThumbnailSetResponse> setKey2(String str) {
                return (Set) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ThumbnailSetResponse> setOauthToken2(String str) {
                return (Set) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ThumbnailSetResponse> setPrettyPrint2(Boolean bool) {
                return (Set) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ThumbnailSetResponse> setQuotaUser2(String str) {
                return (Set) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ThumbnailSetResponse> setUserIp2(String str) {
                return (Set) super.setUserIp2(str);
            }

            public String getVideoId() {
                return this.videoId;
            }

            public Set setVideoId(String str) {
                this.videoId = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Set setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Set set(String str, Object obj) {
                return (Set) super.set(str, obj);
            }
        }
    }

    public VideoAbuseReportReasons videoAbuseReportReasons() {
        return new VideoAbuseReportReasons();
    }

    public class VideoAbuseReportReasons {
        public VideoAbuseReportReasons() {
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<VideoAbuseReportReasonListResponse> {
            private static final String REST_PATH = "videoAbuseReportReasons";

            /* renamed from: hl */
            @Key
            private String f6993hl;

            @Key
            private String part;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, VideoAbuseReportReasonListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getHl() {
                return this.f6993hl;
            }

            public List setHl(String str) {
                this.f6993hl = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public VideoCategories videoCategories() {
        return new VideoCategories();
    }

    public class VideoCategories {
        public VideoCategories() {
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<VideoCategoryListResponse> {
            private static final String REST_PATH = "videoCategories";

            /* renamed from: hl */
            @Key
            private String f6994hl;

            /* renamed from: id */
            @Key
            private String f6995id;

            @Key
            private String part;

            @Key
            private String regionCode;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, VideoCategoryListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<VideoCategoryListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<VideoCategoryListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<VideoCategoryListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<VideoCategoryListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<VideoCategoryListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<VideoCategoryListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<VideoCategoryListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getHl() {
                return this.f6994hl;
            }

            public List setHl(String str) {
                this.f6994hl = str;
                return this;
            }

            public String getId() {
                return this.f6995id;
            }

            public List setId(String str) {
                this.f6995id = str;
                return this;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            public List setRegionCode(String str) {
                this.regionCode = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }
    }

    public Videos videos() {
        return new Videos();
    }

    public class Videos {
        public Videos() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            YouTube.this.initialize(delete);
            return delete;
        }

        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "videos";

            /* renamed from: id */
            @Key
            private String f6996id;

            @Key
            private String onBehalfOfContentOwner;

            protected Delete(String str) {
                super(YouTube.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.f6996id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6996id;
            }

            public Delete setId(String str) {
                this.f6996id = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }
        }

        public GetRating getRating(String str) {
            GetRating getRating = new GetRating(str);
            YouTube.this.initialize(getRating);
            return getRating;
        }

        public class GetRating extends YouTubeRequest<VideoGetRatingResponse> {
            private static final String REST_PATH = "videos/getRating";

            /* renamed from: id */
            @Key
            private String f6997id;

            @Key
            private String onBehalfOfContentOwner;

            protected GetRating(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, VideoGetRatingResponse.class);
                this.f6997id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<VideoGetRatingResponse> setAlt2(String str) {
                return (GetRating) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<VideoGetRatingResponse> setFields2(String str) {
                return (GetRating) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<VideoGetRatingResponse> setKey2(String str) {
                return (GetRating) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<VideoGetRatingResponse> setOauthToken2(String str) {
                return (GetRating) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<VideoGetRatingResponse> setPrettyPrint2(Boolean bool) {
                return (GetRating) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<VideoGetRatingResponse> setQuotaUser2(String str) {
                return (GetRating) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<VideoGetRatingResponse> setUserIp2(String str) {
                return (GetRating) super.setUserIp2(str);
            }

            public String getId() {
                return this.f6997id;
            }

            public GetRating setId(String str) {
                this.f6997id = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public GetRating setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public GetRating set(String str, Object obj) {
                return (GetRating) super.set(str, obj);
            }
        }

        public Insert insert(String str, Video video) {
            Insert insert = new Insert(str, video);
            YouTube.this.initialize(insert);
            return insert;
        }

        public Insert insert(String str, Video video, AbstractInputStreamContent abstractInputStreamContent) {
            Insert insert = new Insert(str, video, abstractInputStreamContent);
            YouTube.this.initialize(insert);
            return insert;
        }

        public class Insert extends YouTubeRequest<Video> {
            private static final String REST_PATH = "videos";

            @Key
            private Boolean autoLevels;

            @Key
            private Boolean notifySubscribers;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String onBehalfOfContentOwnerChannel;

            @Key
            private String part;

            @Key
            private Boolean stabilize;

            protected Insert(String str, Video video) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, video, Video.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            protected Insert(String str, Video video, AbstractInputStreamContent abstractInputStreamContent) {
                super(YouTube.this, HttpMethods.POST, "/upload/" + YouTube.this.getServicePath() + REST_PATH, video, Video.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
                initializeMediaUpload(abstractInputStreamContent);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Video> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Video> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Video> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Video> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Video> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Video> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Video> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            public Boolean getAutoLevels() {
                return this.autoLevels;
            }

            public Insert setAutoLevels(Boolean bool) {
                this.autoLevels = bool;
                return this;
            }

            public Boolean getNotifySubscribers() {
                return this.notifySubscribers;
            }

            public Insert setNotifySubscribers(Boolean bool) {
                this.notifySubscribers = bool;
                return this;
            }

            public boolean isNotifySubscribers() {
                if (this.notifySubscribers == null || this.notifySubscribers == Data.NULL_BOOLEAN) {
                    return true;
                }
                return this.notifySubscribers.booleanValue();
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public Insert setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Boolean getStabilize() {
                return this.stabilize;
            }

            public Insert setStabilize(Boolean bool) {
                this.stabilize = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }
        }

        public List list(String str) {
            List list = new List(str);
            YouTube.this.initialize(list);
            return list;
        }

        public class List extends YouTubeRequest<VideoListResponse> {
            private static final String REST_PATH = "videos";

            @Key
            private String chart;

            /* renamed from: hl */
            @Key
            private String f6998hl;

            /* renamed from: id */
            @Key
            private String f6999id;

            @Key
            private String locale;

            @Key
            private Long maxResults;

            @Key
            private String myRating;

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String pageToken;

            @Key
            private String part;

            @Key
            private String regionCode;

            @Key
            private String videoCategoryId;

            protected List(String str) {
                super(YouTube.this, HttpMethods.GET, REST_PATH, null, VideoListResponse.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<VideoListResponse> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<VideoListResponse> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<VideoListResponse> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<VideoListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<VideoListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<VideoListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<VideoListResponse> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public String getChart() {
                return this.chart;
            }

            public List setChart(String str) {
                this.chart = str;
                return this;
            }

            public String getHl() {
                return this.f6998hl;
            }

            public List setHl(String str) {
                this.f6998hl = str;
                return this;
            }

            public String getId() {
                return this.f6999id;
            }

            public List setId(String str) {
                this.f6999id = str;
                return this;
            }

            public String getLocale() {
                return this.locale;
            }

            public List setLocale(String str) {
                this.locale = str;
                return this;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public String getMyRating() {
                return this.myRating;
            }

            public List setMyRating(String str) {
                this.myRating = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            public List setRegionCode(String str) {
                this.regionCode = str;
                return this;
            }

            public String getVideoCategoryId() {
                return this.videoCategoryId;
            }

            public List setVideoCategoryId(String str) {
                this.videoCategoryId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }
        }

        public Rate rate(String str, String str2) {
            Rate rate = new Rate(str, str2);
            YouTube.this.initialize(rate);
            return rate;
        }

        public class Rate extends YouTubeRequest<Void> {
            private static final String REST_PATH = "videos/rate";

            /* renamed from: id */
            @Key
            private String f7000id;

            @Key
            private String rating;

            protected Rate(String str, String str2) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, null, Void.class);
                this.f7000id = (String) Preconditions.checkNotNull(str, "Required parameter id must be specified.");
                this.rating = (String) Preconditions.checkNotNull(str2, "Required parameter rating must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Rate) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Rate) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Rate) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Rate) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Rate) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Rate) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Rate) super.setUserIp2(str);
            }

            public String getId() {
                return this.f7000id;
            }

            public Rate setId(String str) {
                this.f7000id = str;
                return this;
            }

            public String getRating() {
                return this.rating;
            }

            public Rate setRating(String str) {
                this.rating = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Rate set(String str, Object obj) {
                return (Rate) super.set(str, obj);
            }
        }

        public ReportAbuse reportAbuse(VideoAbuseReport videoAbuseReport) {
            ReportAbuse reportAbuse = new ReportAbuse(videoAbuseReport);
            YouTube.this.initialize(reportAbuse);
            return reportAbuse;
        }

        public class ReportAbuse extends YouTubeRequest<Void> {
            private static final String REST_PATH = "videos/reportAbuse";

            @Key
            private String onBehalfOfContentOwner;

            protected ReportAbuse(VideoAbuseReport videoAbuseReport) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, videoAbuseReport, Void.class);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (ReportAbuse) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (ReportAbuse) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (ReportAbuse) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (ReportAbuse) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (ReportAbuse) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (ReportAbuse) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (ReportAbuse) super.setUserIp2(str);
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public ReportAbuse setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public ReportAbuse set(String str, Object obj) {
                return (ReportAbuse) super.set(str, obj);
            }
        }

        public Update update(String str, Video video) {
            Update update = new Update(str, video);
            YouTube.this.initialize(update);
            return update;
        }

        public class Update extends YouTubeRequest<Video> {
            private static final String REST_PATH = "videos";

            @Key
            private String onBehalfOfContentOwner;

            @Key
            private String part;

            protected Update(String str, Video video) {
                super(YouTube.this, HttpMethods.PUT, REST_PATH, video, Video.class);
                this.part = (String) Preconditions.checkNotNull(str, "Required parameter part must be specified.");
                checkRequiredParameter(video, "content");
                checkRequiredParameter(video.getId(), "Video.getId()");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Video> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Video> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Video> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Video> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Video> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Video> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Video> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }

            public String getPart() {
                return this.part;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }
        }
    }

    public Watermarks watermarks() {
        return new Watermarks();
    }

    public class Watermarks {
        public Watermarks() {
        }

        public Set set(String str, InvideoBranding invideoBranding) {
            Set set = new Set(str, invideoBranding);
            YouTube.this.initialize(set);
            return set;
        }

        public Set set(String str, InvideoBranding invideoBranding, AbstractInputStreamContent abstractInputStreamContent) {
            Set set = new Set(str, invideoBranding, abstractInputStreamContent);
            YouTube.this.initialize(set);
            return set;
        }

        public class Set extends YouTubeRequest<Void> {
            private static final String REST_PATH = "watermarks/set";

            @Key
            private String channelId;

            @Key
            private String onBehalfOfContentOwner;

            protected Set(String str, InvideoBranding invideoBranding) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, invideoBranding, Void.class);
                this.channelId = (String) Preconditions.checkNotNull(str, "Required parameter channelId must be specified.");
            }

            protected Set(String str, InvideoBranding invideoBranding, AbstractInputStreamContent abstractInputStreamContent) {
                super(YouTube.this, HttpMethods.POST, "/upload/" + YouTube.this.getServicePath() + REST_PATH, invideoBranding, Void.class);
                this.channelId = (String) Preconditions.checkNotNull(str, "Required parameter channelId must be specified.");
                initializeMediaUpload(abstractInputStreamContent);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Set) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Set) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Set) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Set) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Set) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Set) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Set) super.setUserIp2(str);
            }

            public String getChannelId() {
                return this.channelId;
            }

            public Set setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Set setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Set set(String str, Object obj) {
                return (Set) super.set(str, obj);
            }
        }

        public Unset unset(String str) {
            Unset unset = new Unset(str);
            YouTube.this.initialize(unset);
            return unset;
        }

        public class Unset extends YouTubeRequest<Void> {
            private static final String REST_PATH = "watermarks/unset";

            @Key
            private String channelId;

            @Key
            private String onBehalfOfContentOwner;

            protected Unset(String str) {
                super(YouTube.this, HttpMethods.POST, REST_PATH, null, Void.class);
                this.channelId = (String) Preconditions.checkNotNull(str, "Required parameter channelId must be specified.");
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Unset) super.setAlt2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Unset) super.setFields2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Unset) super.setKey2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Unset) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Unset) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Unset) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Unset) super.setUserIp2(str);
            }

            public String getChannelId() {
                return this.channelId;
            }

            public Unset setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public Unset setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Unset set(String str, Object obj) {
                return (Unset) super.set(str, obj);
            }
        }
    }

    public static final class Builder extends AbstractGoogleJsonClient.Builder {
        public Builder(HttpTransport httpTransport, JsonFactory jsonFactory, HttpRequestInitializer httpRequestInitializer) {
            super(httpTransport, jsonFactory, YouTube.DEFAULT_ROOT_URL, YouTube.DEFAULT_SERVICE_PATH, httpRequestInitializer, false);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public YouTube build() {
            return new YouTube(this);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setRootUrl(String str) {
            return (Builder) super.setRootUrl(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setServicePath(String str) {
            return (Builder) super.setServicePath(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setHttpRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
            return (Builder) super.setHttpRequestInitializer(httpRequestInitializer);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setSuppressPatternChecks(boolean z) {
            return (Builder) super.setSuppressPatternChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setSuppressRequiredParameterChecks(boolean z) {
            return (Builder) super.setSuppressRequiredParameterChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setSuppressAllChecks(boolean z) {
            return (Builder) super.setSuppressAllChecks(z);
        }

        public Builder setYouTubeRequestInitializer(YouTubeRequestInitializer youTubeRequestInitializer) {
            return (Builder) super.setGoogleClientRequestInitializer((GoogleClientRequestInitializer) youTubeRequestInitializer);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setGoogleClientRequestInitializer(GoogleClientRequestInitializer googleClientRequestInitializer) {
            return (Builder) super.setGoogleClientRequestInitializer(googleClientRequestInitializer);
        }
    }
}
