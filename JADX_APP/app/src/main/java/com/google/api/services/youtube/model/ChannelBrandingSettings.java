package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes.dex */
public final class ChannelBrandingSettings extends GenericJson {

    @Key
    private ChannelSettings channel;

    @Key
    private List<PropertyValue> hints;

    @Key
    private ImageSettings image;

    @Key
    private WatchSettings watch;

    public ChannelSettings getChannel() {
        return this.channel;
    }

    public ChannelBrandingSettings setChannel(ChannelSettings channelSettings) {
        this.channel = channelSettings;
        return this;
    }

    public List<PropertyValue> getHints() {
        return this.hints;
    }

    public ChannelBrandingSettings setHints(List<PropertyValue> list) {
        this.hints = list;
        return this;
    }

    public ImageSettings getImage() {
        return this.image;
    }

    public ChannelBrandingSettings setImage(ImageSettings imageSettings) {
        this.image = imageSettings;
        return this;
    }

    public WatchSettings getWatch() {
        return this.watch;
    }

    public ChannelBrandingSettings setWatch(WatchSettings watchSettings) {
        this.watch = watchSettings;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public ChannelBrandingSettings set(String str, Object obj) {
        return (ChannelBrandingSettings) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ChannelBrandingSettings clone() {
        return (ChannelBrandingSettings) super.clone();
    }
}
