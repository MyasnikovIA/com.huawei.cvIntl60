package com.google.api.client.util;

import java.security.KeyStore;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
public final class SslUtils {
    public static SSLContext getSslContext() {
        return SSLContext.getInstance("SSL");
    }

    public static SSLContext getTlsSslContext() {
        return SSLContext.getInstance("TLS");
    }

    public static TrustManagerFactory getDefaultTrustManagerFactory() {
        return TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
    }

    public static TrustManagerFactory getPkixTrustManagerFactory() {
        return TrustManagerFactory.getInstance("PKIX");
    }

    public static KeyManagerFactory getDefaultKeyManagerFactory() {
        return KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
    }

    public static KeyManagerFactory getPkixKeyManagerFactory() {
        return KeyManagerFactory.getInstance("PKIX");
    }

    public static SSLContext initSslContext(SSLContext sSLContext, KeyStore keyStore, TrustManagerFactory trustManagerFactory) {
        trustManagerFactory.init(keyStore);
        sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
        return sSLContext;
    }

    /* renamed from: com.google.api.client.util.SslUtils$1 */
    static class C14571 implements X509TrustManager {
        C14571() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    @Beta
    public static SSLContext trustAllSSLContext() {
        TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.google.api.client.util.SslUtils.1
            C14571() {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }
        }};
        SSLContext tlsSslContext = getTlsSslContext();
        tlsSslContext.init(null, trustManagerArr, null);
        return tlsSslContext;
    }

    /* renamed from: com.google.api.client.util.SslUtils$2 */
    static class C14582 implements HostnameVerifier {
        C14582() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    @Beta
    public static HostnameVerifier trustAllHostnameVerifier() {
        return new HostnameVerifier() { // from class: com.google.api.client.util.SslUtils.2
            C14582() {
            }

            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                return true;
            }
        };
    }

    private SslUtils() {
    }
}
