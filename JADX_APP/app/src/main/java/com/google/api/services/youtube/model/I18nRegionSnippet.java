package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class I18nRegionSnippet extends GenericJson {

    /* renamed from: gl */
    @Key
    private String f7012gl;

    @Key
    private String name;

    public String getGl() {
        return this.f7012gl;
    }

    public I18nRegionSnippet setGl(String str) {
        this.f7012gl = str;
        return this;
    }

    public String getName() {
        return this.name;
    }

    public I18nRegionSnippet setName(String str) {
        this.name = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public I18nRegionSnippet set(String str, Object obj) {
        return (I18nRegionSnippet) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public I18nRegionSnippet clone() {
        return (I18nRegionSnippet) super.clone();
    }
}
