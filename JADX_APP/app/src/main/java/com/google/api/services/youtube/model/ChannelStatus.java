package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class ChannelStatus extends GenericJson {

    @Key
    private Boolean isLinked;

    @Key
    private String longUploadsStatus;

    @Key
    private String privacyStatus;

    public Boolean getIsLinked() {
        return this.isLinked;
    }

    public ChannelStatus setIsLinked(Boolean bool) {
        this.isLinked = bool;
        return this;
    }

    public String getLongUploadsStatus() {
        return this.longUploadsStatus;
    }

    public ChannelStatus setLongUploadsStatus(String str) {
        this.longUploadsStatus = str;
        return this;
    }

    public String getPrivacyStatus() {
        return this.privacyStatus;
    }

    public ChannelStatus setPrivacyStatus(String str) {
        this.privacyStatus = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public ChannelStatus set(String str, Object obj) {
        return (ChannelStatus) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ChannelStatus clone() {
        return (ChannelStatus) super.clone();
    }
}
