package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class LiveBroadcastContentDetails extends GenericJson {

    @Key
    private String boundStreamId;

    @Key
    private DateTime boundStreamLastUpdateTimeMs;

    @Key
    private String closedCaptionsType;

    @Key
    private Boolean enableClosedCaptions;

    @Key
    private Boolean enableContentEncryption;

    @Key
    private Boolean enableDvr;

    @Key
    private Boolean enableEmbed;

    @Key
    private Boolean enableLowLatency;

    @Key
    private MonitorStreamInfo monitorStream;

    @Key
    private String projection;

    @Key
    private Boolean recordFromStart;

    @Key
    private Boolean startWithSlate;

    public String getBoundStreamId() {
        return this.boundStreamId;
    }

    public LiveBroadcastContentDetails setBoundStreamId(String str) {
        this.boundStreamId = str;
        return this;
    }

    public DateTime getBoundStreamLastUpdateTimeMs() {
        return this.boundStreamLastUpdateTimeMs;
    }

    public LiveBroadcastContentDetails setBoundStreamLastUpdateTimeMs(DateTime dateTime) {
        this.boundStreamLastUpdateTimeMs = dateTime;
        return this;
    }

    public String getClosedCaptionsType() {
        return this.closedCaptionsType;
    }

    public LiveBroadcastContentDetails setClosedCaptionsType(String str) {
        this.closedCaptionsType = str;
        return this;
    }

    public Boolean getEnableClosedCaptions() {
        return this.enableClosedCaptions;
    }

    public LiveBroadcastContentDetails setEnableClosedCaptions(Boolean bool) {
        this.enableClosedCaptions = bool;
        return this;
    }

    public Boolean getEnableContentEncryption() {
        return this.enableContentEncryption;
    }

    public LiveBroadcastContentDetails setEnableContentEncryption(Boolean bool) {
        this.enableContentEncryption = bool;
        return this;
    }

    public Boolean getEnableDvr() {
        return this.enableDvr;
    }

    public LiveBroadcastContentDetails setEnableDvr(Boolean bool) {
        this.enableDvr = bool;
        return this;
    }

    public Boolean getEnableEmbed() {
        return this.enableEmbed;
    }

    public LiveBroadcastContentDetails setEnableEmbed(Boolean bool) {
        this.enableEmbed = bool;
        return this;
    }

    public Boolean getEnableLowLatency() {
        return this.enableLowLatency;
    }

    public LiveBroadcastContentDetails setEnableLowLatency(Boolean bool) {
        this.enableLowLatency = bool;
        return this;
    }

    public MonitorStreamInfo getMonitorStream() {
        return this.monitorStream;
    }

    public LiveBroadcastContentDetails setMonitorStream(MonitorStreamInfo monitorStreamInfo) {
        this.monitorStream = monitorStreamInfo;
        return this;
    }

    public String getProjection() {
        return this.projection;
    }

    public LiveBroadcastContentDetails setProjection(String str) {
        this.projection = str;
        return this;
    }

    public Boolean getRecordFromStart() {
        return this.recordFromStart;
    }

    public LiveBroadcastContentDetails setRecordFromStart(Boolean bool) {
        this.recordFromStart = bool;
        return this;
    }

    public Boolean getStartWithSlate() {
        return this.startWithSlate;
    }

    public LiveBroadcastContentDetails setStartWithSlate(Boolean bool) {
        this.startWithSlate = bool;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveBroadcastContentDetails set(String str, Object obj) {
        return (LiveBroadcastContentDetails) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveBroadcastContentDetails clone() {
        return (LiveBroadcastContentDetails) super.clone();
    }
}
