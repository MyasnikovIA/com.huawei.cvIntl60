package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class ActivityContentDetailsPlaylistItem extends GenericJson {

    @Key
    private String playlistId;

    @Key
    private String playlistItemId;

    @Key
    private ResourceId resourceId;

    public String getPlaylistId() {
        return this.playlistId;
    }

    public ActivityContentDetailsPlaylistItem setPlaylistId(String str) {
        this.playlistId = str;
        return this;
    }

    public String getPlaylistItemId() {
        return this.playlistItemId;
    }

    public ActivityContentDetailsPlaylistItem setPlaylistItemId(String str) {
        this.playlistItemId = str;
        return this;
    }

    public ResourceId getResourceId() {
        return this.resourceId;
    }

    public ActivityContentDetailsPlaylistItem setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public ActivityContentDetailsPlaylistItem set(String str, Object obj) {
        return (ActivityContentDetailsPlaylistItem) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ActivityContentDetailsPlaylistItem clone() {
        return (ActivityContentDetailsPlaylistItem) super.clone();
    }
}
