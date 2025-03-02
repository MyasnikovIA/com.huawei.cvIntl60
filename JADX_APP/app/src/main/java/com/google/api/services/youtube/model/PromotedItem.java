package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class PromotedItem extends GenericJson {

    @Key
    private String customMessage;

    /* renamed from: id */
    @Key
    private PromotedItemId f7022id;

    @Key
    private Boolean promotedByContentOwner;

    @Key
    private InvideoTiming timing;

    public String getCustomMessage() {
        return this.customMessage;
    }

    public PromotedItem setCustomMessage(String str) {
        this.customMessage = str;
        return this;
    }

    public PromotedItemId getId() {
        return this.f7022id;
    }

    public PromotedItem setId(PromotedItemId promotedItemId) {
        this.f7022id = promotedItemId;
        return this;
    }

    public Boolean getPromotedByContentOwner() {
        return this.promotedByContentOwner;
    }

    public PromotedItem setPromotedByContentOwner(Boolean bool) {
        this.promotedByContentOwner = bool;
        return this;
    }

    public InvideoTiming getTiming() {
        return this.timing;
    }

    public PromotedItem setTiming(InvideoTiming invideoTiming) {
        this.timing = invideoTiming;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public PromotedItem set(String str, Object obj) {
        return (PromotedItem) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public PromotedItem clone() {
        return (PromotedItem) super.clone();
    }
}
