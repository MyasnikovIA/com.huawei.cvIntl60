package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class LiveBroadcastTopic extends GenericJson {

    @Key
    private LiveBroadcastTopicSnippet snippet;

    @Key
    private String type;

    @Key
    private Boolean unmatched;

    public LiveBroadcastTopicSnippet getSnippet() {
        return this.snippet;
    }

    public LiveBroadcastTopic setSnippet(LiveBroadcastTopicSnippet liveBroadcastTopicSnippet) {
        this.snippet = liveBroadcastTopicSnippet;
        return this;
    }

    public String getType() {
        return this.type;
    }

    public LiveBroadcastTopic setType(String str) {
        this.type = str;
        return this;
    }

    public Boolean getUnmatched() {
        return this.unmatched;
    }

    public LiveBroadcastTopic setUnmatched(Boolean bool) {
        this.unmatched = bool;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveBroadcastTopic set(String str, Object obj) {
        return (LiveBroadcastTopic) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveBroadcastTopic clone() {
        return (LiveBroadcastTopic) super.clone();
    }
}
