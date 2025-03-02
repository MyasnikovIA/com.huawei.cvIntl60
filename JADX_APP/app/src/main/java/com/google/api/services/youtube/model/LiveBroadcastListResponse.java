package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes.dex */
public final class LiveBroadcastListResponse extends GenericJson {

    @Key
    private String etag;

    @Key
    private String eventId;

    @Key
    private List<LiveBroadcast> items;

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
        Data.nullOf(LiveBroadcast.class);
    }

    public String getEtag() {
        return this.etag;
    }

    public LiveBroadcastListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getEventId() {
        return this.eventId;
    }

    public LiveBroadcastListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public List<LiveBroadcast> getItems() {
        return this.items;
    }

    public LiveBroadcastListResponse setItems(List<LiveBroadcast> list) {
        this.items = list;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public LiveBroadcastListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    public LiveBroadcastListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public PageInfo getPageInfo() {
        return this.pageInfo;
    }

    public LiveBroadcastListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public String getPrevPageToken() {
        return this.prevPageToken;
    }

    public LiveBroadcastListResponse setPrevPageToken(String str) {
        this.prevPageToken = str;
        return this;
    }

    public TokenPagination getTokenPagination() {
        return this.tokenPagination;
    }

    public LiveBroadcastListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public String getVisitorId() {
        return this.visitorId;
    }

    public LiveBroadcastListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveBroadcastListResponse set(String str, Object obj) {
        return (LiveBroadcastListResponse) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveBroadcastListResponse clone() {
        return (LiveBroadcastListResponse) super.clone();
    }
}
