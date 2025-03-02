package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes.dex */
public final class SubscriptionListResponse extends GenericJson {

    @Key
    private String etag;

    @Key
    private String eventId;

    @Key
    private List<Subscription> items;

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
        Data.nullOf(Subscription.class);
    }

    public String getEtag() {
        return this.etag;
    }

    public SubscriptionListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getEventId() {
        return this.eventId;
    }

    public SubscriptionListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public List<Subscription> getItems() {
        return this.items;
    }

    public SubscriptionListResponse setItems(List<Subscription> list) {
        this.items = list;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public SubscriptionListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    public SubscriptionListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public PageInfo getPageInfo() {
        return this.pageInfo;
    }

    public SubscriptionListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public String getPrevPageToken() {
        return this.prevPageToken;
    }

    public SubscriptionListResponse setPrevPageToken(String str) {
        this.prevPageToken = str;
        return this;
    }

    public TokenPagination getTokenPagination() {
        return this.tokenPagination;
    }

    public SubscriptionListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public String getVisitorId() {
        return this.visitorId;
    }

    public SubscriptionListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public SubscriptionListResponse set(String str, Object obj) {
        return (SubscriptionListResponse) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public SubscriptionListResponse clone() {
        return (SubscriptionListResponse) super.clone();
    }
}
