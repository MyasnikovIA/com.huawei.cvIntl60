package com.google.api.client.util;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.KeyFactory;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
public final class SecurityUtils {
    public static KeyStore getDefaultKeyStore() {
        return KeyStore.getInstance(KeyStore.getDefaultType());
    }

    public static KeyStore getJavaKeyStore() {
        return KeyStore.getInstance("JKS");
    }

    public static KeyStore getPkcs12KeyStore() {
        return KeyStore.getInstance("PKCS12");
    }

    public static void loadKeyStore(KeyStore keyStore, InputStream inputStream, String str) {
        try {
            keyStore.load(inputStream, str.toCharArray());
        } finally {
            inputStream.close();
        }
    }

    public static PrivateKey getPrivateKey(KeyStore keyStore, String str, String str2) {
        return (PrivateKey) keyStore.getKey(str, str2.toCharArray());
    }

    public static PrivateKey loadPrivateKeyFromKeyStore(KeyStore keyStore, InputStream inputStream, String str, String str2, String str3) {
        loadKeyStore(keyStore, inputStream, str);
        return getPrivateKey(keyStore, str2, str3);
    }

    public static KeyFactory getRsaKeyFactory() {
        return KeyFactory.getInstance("RSA");
    }

    public static Signature getSha1WithRsaSignatureAlgorithm() {
        return Signature.getInstance("SHA1withRSA");
    }

    public static Signature getSha256WithRsaSignatureAlgorithm() {
        return Signature.getInstance("SHA256withRSA");
    }

    public static byte[] sign(Signature signature, PrivateKey privateKey, byte[] bArr) {
        signature.initSign(privateKey);
        signature.update(bArr);
        return signature.sign();
    }

    public static boolean verify(Signature signature, PublicKey publicKey, byte[] bArr, byte[] bArr2) {
        signature.initVerify(publicKey);
        signature.update(bArr2);
        return signature.verify(bArr);
    }

    public static X509Certificate verify(Signature signature, X509TrustManager x509TrustManager, List<String> list, byte[] bArr, byte[] bArr2) {
        try {
            CertificateFactory x509CertificateFactory = getX509CertificateFactory();
            X509Certificate[] x509CertificateArr = new X509Certificate[list.size()];
            Iterator<String> it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                try {
                    Certificate generateCertificate = x509CertificateFactory.generateCertificate(new ByteArrayInputStream(Base64.decodeBase64(it.next())));
                    if (!(generateCertificate instanceof X509Certificate)) {
                        return null;
                    }
                    int i2 = i + 1;
                    x509CertificateArr[i] = (X509Certificate) generateCertificate;
                    i = i2;
                } catch (CertificateException e) {
                    return null;
                }
            }
            try {
                x509TrustManager.checkServerTrusted(x509CertificateArr, "RSA");
                if (verify(signature, x509CertificateArr[0].getPublicKey(), bArr, bArr2)) {
                    return x509CertificateArr[0];
                }
                return null;
            } catch (CertificateException e2) {
                return null;
            }
        } catch (CertificateException e3) {
            return null;
        }
    }

    public static CertificateFactory getX509CertificateFactory() {
        return CertificateFactory.getInstance("X.509");
    }

    public static void loadKeyStoreFromCertificates(KeyStore keyStore, CertificateFactory certificateFactory, InputStream inputStream) {
        int i = 0;
        Iterator<? extends Certificate> it = certificateFactory.generateCertificates(inputStream).iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                keyStore.setCertificateEntry(String.valueOf(i2), it.next());
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private SecurityUtils() {
    }
}
