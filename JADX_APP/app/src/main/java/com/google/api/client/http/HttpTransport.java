package com.google.api.client.http;

import java.util.Arrays;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class HttpTransport {
    static final Logger LOGGER = Logger.getLogger(HttpTransport.class.getName());
    private static final String[] SUPPORTED_METHODS = {HttpMethods.DELETE, HttpMethods.GET, HttpMethods.POST, HttpMethods.PUT};

    protected abstract LowLevelHttpRequest buildRequest(String str, String str2);

    static {
        Arrays.sort(SUPPORTED_METHODS);
    }

    public final HttpRequestFactory createRequestFactory() {
        return createRequestFactory(null);
    }

    public final HttpRequestFactory createRequestFactory(HttpRequestInitializer httpRequestInitializer) {
        return new HttpRequestFactory(this, httpRequestInitializer);
    }

    HttpRequest buildRequest() {
        return new HttpRequest(this, null);
    }

    public boolean supportsMethod(String str) {
        return Arrays.binarySearch(SUPPORTED_METHODS, str) >= 0;
    }

    public void shutdown() {
    }
}
