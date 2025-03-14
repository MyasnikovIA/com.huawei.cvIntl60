package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class WatchSettings extends GenericJson {

    @Key
    private String backgroundColor;

    @Key
    private String featuredPlaylistId;

    @Key
    private String textColor;

    public String getBackgroundColor() {
        return this.backgroundColor;
    }

    public WatchSettings setBackgroundColor(String str) {
        this.backgroundColor = str;
        return this;
    }

    public String getFeaturedPlaylistId() {
        return this.featuredPlaylistId;
    }

    public WatchSettings setFeaturedPlaylistId(String str) {
        this.featuredPlaylistId = str;
        return this;
    }

    public String getTextColor() {
        return this.textColor;
    }

    public WatchSettings setTextColor(String str) {
        this.textColor = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public WatchSettings set(String str, Object obj) {
        return (WatchSettings) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public WatchSettings clone() {
        return (WatchSettings) super.clone();
    }
}
