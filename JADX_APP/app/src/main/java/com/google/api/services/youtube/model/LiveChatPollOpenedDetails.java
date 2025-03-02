package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes.dex */
public final class LiveChatPollOpenedDetails extends GenericJson {

    /* renamed from: id */
    @Key
    private String f7018id;

    @Key
    private List<LiveChatPollItem> items;

    @Key
    private String prompt;

    static {
        Data.nullOf(LiveChatPollItem.class);
    }

    public String getId() {
        return this.f7018id;
    }

    public LiveChatPollOpenedDetails setId(String str) {
        this.f7018id = str;
        return this;
    }

    public List<LiveChatPollItem> getItems() {
        return this.items;
    }

    public LiveChatPollOpenedDetails setItems(List<LiveChatPollItem> list) {
        this.items = list;
        return this;
    }

    public String getPrompt() {
        return this.prompt;
    }

    public LiveChatPollOpenedDetails setPrompt(String str) {
        this.prompt = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveChatPollOpenedDetails set(String str, Object obj) {
        return (LiveChatPollOpenedDetails) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveChatPollOpenedDetails clone() {
        return (LiveChatPollOpenedDetails) super.clone();
    }
}
