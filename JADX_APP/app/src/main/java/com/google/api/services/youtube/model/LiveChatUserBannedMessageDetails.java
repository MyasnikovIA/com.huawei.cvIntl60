package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.util.Key;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class LiveChatUserBannedMessageDetails extends GenericJson {

    @JsonString
    @Key
    private BigInteger banDurationSeconds;

    @Key
    private String banType;

    @Key
    private ChannelProfileDetails bannedUserDetails;

    public BigInteger getBanDurationSeconds() {
        return this.banDurationSeconds;
    }

    public LiveChatUserBannedMessageDetails setBanDurationSeconds(BigInteger bigInteger) {
        this.banDurationSeconds = bigInteger;
        return this;
    }

    public String getBanType() {
        return this.banType;
    }

    public LiveChatUserBannedMessageDetails setBanType(String str) {
        this.banType = str;
        return this;
    }

    public ChannelProfileDetails getBannedUserDetails() {
        return this.bannedUserDetails;
    }

    public LiveChatUserBannedMessageDetails setBannedUserDetails(ChannelProfileDetails channelProfileDetails) {
        this.bannedUserDetails = channelProfileDetails;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveChatUserBannedMessageDetails set(String str, Object obj) {
        return (LiveChatUserBannedMessageDetails) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveChatUserBannedMessageDetails clone() {
        return (LiveChatUserBannedMessageDetails) super.clone();
    }
}
