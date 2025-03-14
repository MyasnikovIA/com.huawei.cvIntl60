package com.google.api.services.youtube;

import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest;
import com.google.api.client.googleapis.services.json.CommonGoogleJsonClientRequestInitializer;

/* loaded from: classes.dex */
public class YouTubeRequestInitializer extends CommonGoogleJsonClientRequestInitializer {
    public YouTubeRequestInitializer() {
    }

    public YouTubeRequestInitializer(String str) {
        super(str);
    }

    public YouTubeRequestInitializer(String str, String str2) {
        super(str, str2);
    }

    @Override // com.google.api.client.googleapis.services.json.CommonGoogleJsonClientRequestInitializer
    public final void initializeJsonRequest(AbstractGoogleJsonClientRequest<?> abstractGoogleJsonClientRequest) {
        super.initializeJsonRequest(abstractGoogleJsonClientRequest);
        initializeYouTubeRequest((YouTubeRequest) abstractGoogleJsonClientRequest);
    }

    protected void initializeYouTubeRequest(YouTubeRequest<?> youTubeRequest) {
    }
}
