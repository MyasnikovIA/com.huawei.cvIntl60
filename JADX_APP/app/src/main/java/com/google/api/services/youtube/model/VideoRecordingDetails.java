package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class VideoRecordingDetails extends GenericJson {

    @Key
    private GeoPoint location;

    @Key
    private String locationDescription;

    @Key
    private DateTime recordingDate;

    public GeoPoint getLocation() {
        return this.location;
    }

    public VideoRecordingDetails setLocation(GeoPoint geoPoint) {
        this.location = geoPoint;
        return this;
    }

    public String getLocationDescription() {
        return this.locationDescription;
    }

    public VideoRecordingDetails setLocationDescription(String str) {
        this.locationDescription = str;
        return this;
    }

    public DateTime getRecordingDate() {
        return this.recordingDate;
    }

    public VideoRecordingDetails setRecordingDate(DateTime dateTime) {
        this.recordingDate = dateTime;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public VideoRecordingDetails set(String str, Object obj) {
        return (VideoRecordingDetails) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public VideoRecordingDetails clone() {
        return (VideoRecordingDetails) super.clone();
    }
}
