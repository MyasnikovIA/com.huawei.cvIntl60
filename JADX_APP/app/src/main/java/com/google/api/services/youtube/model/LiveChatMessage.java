package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class LiveChatMessage extends GenericJson {

    @Key
    private LiveChatMessageAuthorDetails authorDetails;

    @Key
    private String etag;

    /* renamed from: id */
    @Key
    private String f7015id;

    @Key
    private String kind;

    @Key
    private LiveChatMessageSnippet snippet;

    public LiveChatMessageAuthorDetails getAuthorDetails() {
        return this.authorDetails;
    }

    public LiveChatMessage setAuthorDetails(LiveChatMessageAuthorDetails liveChatMessageAuthorDetails) {
        this.authorDetails = liveChatMessageAuthorDetails;
        return this;
    }

    public String getEtag() {
        return this.etag;
    }

    public LiveChatMessage setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getId() {
        return this.f7015id;
    }

    public LiveChatMessage setId(String str) {
        this.f7015id = str;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public LiveChatMessage setKind(String str) {
        this.kind = str;
        return this;
    }

    public LiveChatMessageSnippet getSnippet() {
        return this.snippet;
    }

    public LiveChatMessage setSnippet(LiveChatMessageSnippet liveChatMessageSnippet) {
        this.snippet = liveChatMessageSnippet;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveChatMessage set(String str, Object obj) {
        return (LiveChatMessage) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveChatMessage clone() {
        return (LiveChatMessage) super.clone();
    }
}
