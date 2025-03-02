package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class LiveBroadcast extends GenericJson {

    @Key
    private LiveBroadcastContentDetails contentDetails;

    @Key
    private String etag;

    /* renamed from: id */
    @Key
    private String f7013id;

    @Key
    private String kind;

    @Key
    private LiveBroadcastSnippet snippet;

    @Key
    private LiveBroadcastStatistics statistics;

    @Key
    private LiveBroadcastStatus status;

    @Key
    private LiveBroadcastTopicDetails topicDetails;

    public LiveBroadcastContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public LiveBroadcast setContentDetails(LiveBroadcastContentDetails liveBroadcastContentDetails) {
        this.contentDetails = liveBroadcastContentDetails;
        return this;
    }

    public String getEtag() {
        return this.etag;
    }

    public LiveBroadcast setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getId() {
        return this.f7013id;
    }

    public LiveBroadcast setId(String str) {
        this.f7013id = str;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public LiveBroadcast setKind(String str) {
        this.kind = str;
        return this;
    }

    public LiveBroadcastSnippet getSnippet() {
        return this.snippet;
    }

    public LiveBroadcast setSnippet(LiveBroadcastSnippet liveBroadcastSnippet) {
        this.snippet = liveBroadcastSnippet;
        return this;
    }

    public LiveBroadcastStatistics getStatistics() {
        return this.statistics;
    }

    public LiveBroadcast setStatistics(LiveBroadcastStatistics liveBroadcastStatistics) {
        this.statistics = liveBroadcastStatistics;
        return this;
    }

    public LiveBroadcastStatus getStatus() {
        return this.status;
    }

    public LiveBroadcast setStatus(LiveBroadcastStatus liveBroadcastStatus) {
        this.status = liveBroadcastStatus;
        return this;
    }

    public LiveBroadcastTopicDetails getTopicDetails() {
        return this.topicDetails;
    }

    public LiveBroadcast setTopicDetails(LiveBroadcastTopicDetails liveBroadcastTopicDetails) {
        this.topicDetails = liveBroadcastTopicDetails;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveBroadcast set(String str, Object obj) {
        return (LiveBroadcast) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveBroadcast clone() {
        return (LiveBroadcast) super.clone();
    }
}
