package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.util.Key;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class VideoFileDetailsAudioStream extends GenericJson {

    @JsonString
    @Key
    private BigInteger bitrateBps;

    @Key
    private Long channelCount;

    @Key
    private String codec;

    @Key
    private String vendor;

    public BigInteger getBitrateBps() {
        return this.bitrateBps;
    }

    public VideoFileDetailsAudioStream setBitrateBps(BigInteger bigInteger) {
        this.bitrateBps = bigInteger;
        return this;
    }

    public Long getChannelCount() {
        return this.channelCount;
    }

    public VideoFileDetailsAudioStream setChannelCount(Long l) {
        this.channelCount = l;
        return this;
    }

    public String getCodec() {
        return this.codec;
    }

    public VideoFileDetailsAudioStream setCodec(String str) {
        this.codec = str;
        return this;
    }

    public String getVendor() {
        return this.vendor;
    }

    public VideoFileDetailsAudioStream setVendor(String str) {
        this.vendor = str;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public VideoFileDetailsAudioStream set(String str, Object obj) {
        return (VideoFileDetailsAudioStream) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public VideoFileDetailsAudioStream clone() {
        return (VideoFileDetailsAudioStream) super.clone();
    }
}
