package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes.dex */
public final class LiveBroadcastTopicDetails extends GenericJson {

    @Key
    private List<LiveBroadcastTopic> topics;

    static {
        Data.nullOf(LiveBroadcastTopic.class);
    }

    public List<LiveBroadcastTopic> getTopics() {
        return this.topics;
    }

    public LiveBroadcastTopicDetails setTopics(List<LiveBroadcastTopic> list) {
        this.topics = list;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveBroadcastTopicDetails set(String str, Object obj) {
        return (LiveBroadcastTopicDetails) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveBroadcastTopicDetails clone() {
        return (LiveBroadcastTopicDetails) super.clone();
    }
}
