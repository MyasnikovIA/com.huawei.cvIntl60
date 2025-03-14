package com.google.api.client.googleapis.services;

/* loaded from: classes.dex */
public class CommonGoogleClientRequestInitializer implements GoogleClientRequestInitializer {
    private final String key;
    private final String userIp;

    public CommonGoogleClientRequestInitializer() {
        this(null);
    }

    public CommonGoogleClientRequestInitializer(String str) {
        this(str, null);
    }

    public CommonGoogleClientRequestInitializer(String str, String str2) {
        this.key = str;
        this.userIp = str2;
    }

    @Override // com.google.api.client.googleapis.services.GoogleClientRequestInitializer
    public void initialize(AbstractGoogleClientRequest<?> abstractGoogleClientRequest) {
        if (this.key != null) {
            abstractGoogleClientRequest.put("key", (Object) this.key);
        }
        if (this.userIp != null) {
            abstractGoogleClientRequest.put("userIp", (Object) this.userIp);
        }
    }

    public final String getKey() {
        return this.key;
    }

    public final String getUserIp() {
        return this.userIp;
    }
}
