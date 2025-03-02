package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class LiveStream extends GenericJson {

    @Key
    private CdnSettings cdn;

    @Key
    private LiveStreamContentDetails contentDetails;

    @Key
    private String etag;

    /* renamed from: id */
    @Key
    private String f7019id;

    @Key
    private String kind;

    @Key
    private LiveStreamSnippet snippet;

    @Key
    private LiveStreamStatus status;

    public CdnSettings getCdn() {
        return this.cdn;
    }

    public LiveStream setCdn(CdnSettings cdnSettings) {
        this.cdn = cdnSettings;
        return this;
    }

    public LiveStreamContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public LiveStream setContentDetails(LiveStreamContentDetails liveStreamContentDetails) {
        this.contentDetails = liveStreamContentDetails;
        return this;
    }

    public String getEtag() {
        return this.etag;
    }

    public LiveStream setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getId() {
        return this.f7019id;
    }

    public LiveStream setId(String str) {
        this.f7019id = str;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public LiveStream setKind(String str) {
        this.kind = str;
        return this;
    }

    public LiveStreamSnippet getSnippet() {
        return this.snippet;
    }

    public LiveStream setSnippet(LiveStreamSnippet liveStreamSnippet) {
        this.snippet = liveStreamSnippet;
        return this;
    }

    public LiveStreamStatus getStatus() {
        return this.status;
    }

    public LiveStream setStatus(LiveStreamStatus liveStreamStatus) {
        this.status = liveStreamStatus;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveStream set(String str, Object obj) {
        return (LiveStream) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveStream clone() {
        return (LiveStream) super.clone();
    }
}
