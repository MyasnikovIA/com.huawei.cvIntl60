package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class SearchResultSnippet extends GenericJson {

    @Key
    private String channelId;

    @Key
    private String channelTitle;

    @Key
    private String description;

    @Key
    private String liveBroadcastContent;

    @Key
    private DateTime publishedAt;

    @Key
    private ThumbnailDetails thumbnails;

    @Key
    private String title;

    public String getChannelId() {
        return this.channelId;
    }

    public SearchResultSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public String getChannelTitle() {
        return this.channelTitle;
    }

    public SearchResultSnippet setChannelTitle(String str) {
        this.channelTitle = str;
        return this;
    }

    public String getDescription() {
        return this.description;
    }

    public SearchResultSnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public String getLiveBroadcastContent() {
        return this.liveBroadcastContent;
    }

    public SearchResultSnippet setLiveBroadcastContent(String str) {
        this.liveBroadcastContent = str;
        return this;
    }

    public DateTime getPublishedAt() {
        return this.publishedAt;
    }

    public SearchResultSnippet setPublishedAt(DateTime dateTime) {
        this.publishedAt = dateTime;
        return this;
    }

    public ThumbnailDetails getThumbnails() {
        return this.thumbnails;
    }

    public SearchResultSnippet setThumbnails(ThumbnailDetails thumbnailDetails) {
        this.thumbnails = thumbnailDetails;
        return this;
    }

    public String getTitle() {
        return this.title;
    }

    public SearchResultSnippet setTitle(String str) {
        this.title = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public SearchResultSnippet set(String str, Object obj) {
        return (SearchResultSnippet) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public SearchResultSnippet clone() {
        return (SearchResultSnippet) super.clone();
    }
}
