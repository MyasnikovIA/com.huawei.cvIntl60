package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.services.AbstractGoogleClientRequest;
import com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer;

/* loaded from: classes.dex */
public class CommonGoogleJsonClientRequestInitializer extends CommonGoogleClientRequestInitializer {
    public CommonGoogleJsonClientRequestInitializer() {
    }

    public CommonGoogleJsonClientRequestInitializer(String str) {
        super(str);
    }

    public CommonGoogleJsonClientRequestInitializer(String str, String str2) {
        super(str, str2);
    }

    @Override // com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer, com.google.api.client.googleapis.services.GoogleClientRequestInitializer
    public final void initialize(AbstractGoogleClientRequest<?> abstractGoogleClientRequest) {
        super.initialize(abstractGoogleClientRequest);
        initializeJsonRequest((AbstractGoogleJsonClientRequest) abstractGoogleClientRequest);
    }

    protected void initializeJsonRequest(AbstractGoogleJsonClientRequest<?> abstractGoogleJsonClientRequest) {
    }
}
