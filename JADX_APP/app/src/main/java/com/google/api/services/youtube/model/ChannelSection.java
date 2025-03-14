package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import java.util.Map;

/* loaded from: classes.dex */
public final class ChannelSection extends GenericJson {

    @Key
    private ChannelSectionContentDetails contentDetails;

    @Key
    private String etag;

    /* renamed from: id */
    @Key
    private String f7004id;

    @Key
    private String kind;

    @Key
    private Map<String, ChannelSectionLocalization> localizations;

    @Key
    private ChannelSectionSnippet snippet;

    @Key
    private ChannelSectionTargeting targeting;

    public ChannelSectionContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public ChannelSection setContentDetails(ChannelSectionContentDetails channelSectionContentDetails) {
        this.contentDetails = channelSectionContentDetails;
        return this;
    }

    public String getEtag() {
        return this.etag;
    }

    public ChannelSection setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getId() {
        return this.f7004id;
    }

    public ChannelSection setId(String str) {
        this.f7004id = str;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public ChannelSection setKind(String str) {
        this.kind = str;
        return this;
    }

    public Map<String, ChannelSectionLocalization> getLocalizations() {
        return this.localizations;
    }

    public ChannelSection setLocalizations(Map<String, ChannelSectionLocalization> map) {
        this.localizations = map;
        return this;
    }

    public ChannelSectionSnippet getSnippet() {
        return this.snippet;
    }

    public ChannelSection setSnippet(ChannelSectionSnippet channelSectionSnippet) {
        this.snippet = channelSectionSnippet;
        return this;
    }

    public ChannelSectionTargeting getTargeting() {
        return this.targeting;
    }

    public ChannelSection setTargeting(ChannelSectionTargeting channelSectionTargeting) {
        this.targeting = channelSectionTargeting;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public ChannelSection set(String str, Object obj) {
        return (ChannelSection) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ChannelSection clone() {
        return (ChannelSection) super.clone();
    }
}
