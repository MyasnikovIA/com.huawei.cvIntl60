package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class VideoAbuseReportReason extends GenericJson {

    @Key
    private String etag;

    /* renamed from: id */
    @Key
    private String f7027id;

    @Key
    private String kind;

    @Key
    private VideoAbuseReportReasonSnippet snippet;

    public String getEtag() {
        return this.etag;
    }

    public VideoAbuseReportReason setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getId() {
        return this.f7027id;
    }

    public VideoAbuseReportReason setId(String str) {
        this.f7027id = str;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public VideoAbuseReportReason setKind(String str) {
        this.kind = str;
        return this;
    }

    public VideoAbuseReportReasonSnippet getSnippet() {
        return this.snippet;
    }

    public VideoAbuseReportReason setSnippet(VideoAbuseReportReasonSnippet videoAbuseReportReasonSnippet) {
        this.snippet = videoAbuseReportReasonSnippet;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public VideoAbuseReportReason set(String str, Object obj) {
        return (VideoAbuseReportReason) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public VideoAbuseReportReason clone() {
        return (VideoAbuseReportReason) super.clone();
    }
}
