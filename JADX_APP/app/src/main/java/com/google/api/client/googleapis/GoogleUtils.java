package com.google.api.client.googleapis;

import com.google.api.client.util.SecurityUtils;
import java.security.KeyStore;

/* loaded from: classes.dex */
public final class GoogleUtils {
    static KeyStore certTrustStore;
    public static final Integer MAJOR_VERSION = 1;
    public static final Integer MINOR_VERSION = 22;
    public static final Integer BUGFIX_VERSION = 0;
    public static final String VERSION = (MAJOR_VERSION + "." + MINOR_VERSION + "." + BUGFIX_VERSION + "").toString();

    public static synchronized KeyStore getCertificateTrustStore() {
        KeyStore keyStore;
        synchronized (GoogleUtils.class) {
            if (certTrustStore == null) {
                certTrustStore = SecurityUtils.getJavaKeyStore();
                SecurityUtils.loadKeyStore(certTrustStore, GoogleUtils.class.getResourceAsStream("google.jks"), "notasecret");
            }
            keyStore = certTrustStore;
        }
        return keyStore;
    }

    private GoogleUtils() {
    }
}
