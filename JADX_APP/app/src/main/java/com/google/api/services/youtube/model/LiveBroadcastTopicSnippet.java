package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class LiveBroadcastTopicSnippet extends GenericJson {

    @Key
    private String name;

    @Key
    private String releaseDate;

    public String getName() {
        return this.name;
    }

    public LiveBroadcastTopicSnippet setName(String str) {
        this.name = str;
        return this;
    }

    public String getReleaseDate() {
        return this.releaseDate;
    }

    public LiveBroadcastTopicSnippet setReleaseDate(String str) {
        this.releaseDate = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveBroadcastTopicSnippet set(String str, Object obj) {
        return (LiveBroadcastTopicSnippet) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveBroadcastTopicSnippet clone() {
        return (LiveBroadcastTopicSnippet) super.clone();
    }
}
