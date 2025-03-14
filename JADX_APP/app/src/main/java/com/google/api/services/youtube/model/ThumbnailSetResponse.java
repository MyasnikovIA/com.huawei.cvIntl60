package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes.dex */
public final class ThumbnailSetResponse extends GenericJson {

    @Key
    private String etag;

    @Key
    private String eventId;

    @Key
    private List<ThumbnailDetails> items;

    @Key
    private String kind;

    @Key
    private String visitorId;

    static {
        Data.nullOf(ThumbnailDetails.class);
    }

    public String getEtag() {
        return this.etag;
    }

    public ThumbnailSetResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public String getEventId() {
        return this.eventId;
    }

    public ThumbnailSetResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public List<ThumbnailDetails> getItems() {
        return this.items;
    }

    public ThumbnailSetResponse setItems(List<ThumbnailDetails> list) {
        this.items = list;
        return this;
    }

    public String getKind() {
        return this.kind;
    }

    public ThumbnailSetResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public String getVisitorId() {
        return this.visitorId;
    }

    public ThumbnailSetResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public ThumbnailSetResponse set(String str, Object obj) {
        return (ThumbnailSetResponse) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ThumbnailSetResponse clone() {
        return (ThumbnailSetResponse) super.clone();
    }
}
