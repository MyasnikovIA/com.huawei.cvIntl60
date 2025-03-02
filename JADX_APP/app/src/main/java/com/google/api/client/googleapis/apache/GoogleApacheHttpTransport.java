package com.google.api.client.googleapis.apache;

import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.http.apache.ApacheHttpTransport;

/* loaded from: classes.dex */
public final class GoogleApacheHttpTransport {
    public static ApacheHttpTransport newTrustedTransport() {
        return new ApacheHttpTransport.Builder().trustCertificates(GoogleUtils.getCertificateTrustStore()).build();
    }

    private GoogleApacheHttpTransport() {
    }
}
