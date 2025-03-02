package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes.dex */
public final class LiveStreamListResponse extends GenericJson {

    @Key
    private String etag;

    @Key
    private String eventId;

    @Key
    private List<LiveStream> items;

    @Key
    private String kind;

    @Key
    private String nextPageToken;

    @Key
    private PageInfo pageInfo;

    @Key
    private String prevPageToken;

    @Key
    private TokenPagination tokenPagination;

    @Key
    private String visitorId;

    static {
        Data.nullOf(LiveStream.class);
    }

    public String getEtag() {
        return this.etag;
    }

    public LiveStreamListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getEventId() {
        return this.eventId;
    }

    public LiveStreamListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public List<LiveStream> getItems() {
        return this.items;
    }

    public LiveStreamListResponse setItems(List<LiveStream> list) {
        this.items = list;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public LiveStreamListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    public LiveStreamListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public PageInfo getPageInfo() {
        return this.pageInfo;
    }

    public LiveStreamListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public String getPrevPageToken() {
        return this.prevPageToken;
    }

    public LiveStreamListResponse setPrevPageToken(String str) {
        this.prevPageToken = str;
        return this;
    }

    public TokenPagination getTokenPagination() {
        return this.tokenPagination;
    }

    public LiveStreamListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public String getVisitorId() {
        return this.visitorId;
    }

    public LiveStreamListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveStreamListResponse set(String str, Object obj) {
        return (LiveStreamListResponse) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveStreamListResponse clone() {
        return (LiveStreamListResponse) super.clone();
    }
}
