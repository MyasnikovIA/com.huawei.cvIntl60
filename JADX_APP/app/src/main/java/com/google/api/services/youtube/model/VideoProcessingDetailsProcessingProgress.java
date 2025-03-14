package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.util.Key;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class VideoProcessingDetailsProcessingProgress extends GenericJson {

    @JsonString
    @Key
    private BigInteger partsProcessed;

    @JsonString
    @Key
    private BigInteger partsTotal;

    @JsonString
    @Key
    private BigInteger timeLeftMs;

    public BigInteger getPartsProcessed() {
        return this.partsProcessed;
    }

    public VideoProcessingDetailsProcessingProgress setPartsProcessed(BigInteger bigInteger) {
        this.partsProcessed = bigInteger;
        return this;
    }

    public BigInteger getPartsTotal() {
        return this.partsTotal;
    }

    public VideoProcessingDetailsProcessingProgress setPartsTotal(BigInteger bigInteger) {
        this.partsTotal = bigInteger;
        return this;
    }

    public BigInteger getTimeLeftMs() {
        return this.timeLeftMs;
    }

    public VideoProcessingDetailsProcessingProgress setTimeLeftMs(BigInteger bigInteger) {
        this.timeLeftMs = bigInteger;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public VideoProcessingDetailsProcessingProgress set(String str, Object obj) {
        return (VideoProcessingDetailsProcessingProgress) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public VideoProcessingDetailsProcessingProgress clone() {
        return (VideoProcessingDetailsProcessingProgress) super.clone();
    }
}
