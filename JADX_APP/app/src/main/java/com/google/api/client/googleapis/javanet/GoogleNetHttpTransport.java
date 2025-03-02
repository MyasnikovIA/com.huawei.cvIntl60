package com.google.api.client.googleapis.javanet;

import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.http.javanet.NetHttpTransport;

/* loaded from: classes.dex */
public class GoogleNetHttpTransport {
    public static NetHttpTransport newTrustedTransport() {
        return new NetHttpTransport.Builder().trustCertificates(GoogleUtils.getCertificateTrustStore()).build();
    }

    private GoogleNetHttpTransport() {
    }
}
