package com.google.api.client.googleapis.testing.json;

import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.testing.http.HttpTesting;
import com.google.api.client.testing.http.MockHttpTransport;
import com.google.api.client.testing.http.MockLowLevelHttpResponse;
import com.google.api.client.util.Beta;

@Beta
/* loaded from: classes.dex */
public final class GoogleJsonResponseExceptionFactoryTesting {
    public static GoogleJsonResponseException newMock(JsonFactory jsonFactory, int i, String str) {
        HttpRequest buildGetRequest = new MockHttpTransport.Builder().setLowLevelHttpResponse(new MockLowLevelHttpResponse().setStatusCode(i).setReasonPhrase(str)).build().createRequestFactory().buildGetRequest(HttpTesting.SIMPLE_GENERIC_URL);
        buildGetRequest.setThrowExceptionOnExecuteError(false);
        return GoogleJsonResponseException.from(jsonFactory, buildGetRequest.execute());
    }
}
