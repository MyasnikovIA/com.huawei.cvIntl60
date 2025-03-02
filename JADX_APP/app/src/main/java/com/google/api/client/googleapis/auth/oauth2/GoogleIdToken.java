package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.openidconnect.IdToken;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Key;
import java.util.List;

@Beta
/* loaded from: classes.dex */
public class GoogleIdToken extends IdToken {
    public static GoogleIdToken parse(JsonFactory jsonFactory, String str) {
        JsonWebSignature parse = JsonWebSignature.parser(jsonFactory).setPayloadClass(Payload.class).parse(str);
        return new GoogleIdToken(parse.getHeader(), (Payload) parse.getPayload(), parse.getSignatureBytes(), parse.getSignedContentBytes());
    }

    public GoogleIdToken(JsonWebSignature.Header header, Payload payload, byte[] bArr, byte[] bArr2) {
        super(header, payload, bArr, bArr2);
    }

    public boolean verify(GoogleIdTokenVerifier googleIdTokenVerifier) {
        return googleIdTokenVerifier.verify(this);
    }

    /* renamed from: getPayload, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public Payload m8119getPayload() {
        return (Payload) super.getPayload();
    }

    @Beta
    public static class Payload extends IdToken.Payload {

        @Key("email")
        private String email;

        @Key("email_verified")
        private Object emailVerified;

        @Key("hd")
        private String hostedDomain;

        public /* bridge */ /* synthetic */ IdToken.Payload setMethodsReferences(List list) {
            return m8143setMethodsReferences((List<String>) list);
        }

        @Deprecated
        public String getUserId() {
            return getSubject();
        }

        @Deprecated
        public Payload setUserId(String str) {
            return m8148setSubject(str);
        }

        @Deprecated
        public String getIssuee() {
            return getAuthorizedParty();
        }

        @Deprecated
        public Payload setIssuee(String str) {
            return setAuthorizedParty(str);
        }

        public String getHostedDomain() {
            return this.hostedDomain;
        }

        public Payload setHostedDomain(String str) {
            this.hostedDomain = str;
            return this;
        }

        public String getEmail() {
            return this.email;
        }

        public Payload setEmail(String str) {
            this.email = str;
            return this;
        }

        public Boolean getEmailVerified() {
            if (this.emailVerified == null) {
                return null;
            }
            if (this.emailVerified instanceof Boolean) {
                return (Boolean) this.emailVerified;
            }
            return Boolean.valueOf((String) this.emailVerified);
        }

        public Payload setEmailVerified(Boolean bool) {
            this.emailVerified = bool;
            return this;
        }

        public Payload setAuthorizationTimeSeconds(Long l) {
            return (Payload) super.setAuthorizationTimeSeconds(l);
        }

        public Payload setAuthorizedParty(String str) {
            return (Payload) super.setAuthorizedParty(str);
        }

        public Payload setNonce(String str) {
            return (Payload) super.setNonce(str);
        }

        public Payload setAccessTokenHash(String str) {
            return (Payload) super.setAccessTokenHash(str);
        }

        public Payload setClassReference(String str) {
            return (Payload) super.setClassReference(str);
        }

        /* renamed from: setMethodsReferences */
        public Payload m8143setMethodsReferences(List<String> list) {
            return (Payload) super.setMethodsReferences(list);
        }

        /* renamed from: setExpirationTimeSeconds, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Payload m8136setExpirationTimeSeconds(Long l) {
            return (Payload) super.setExpirationTimeSeconds(l);
        }

        /* renamed from: setNotBeforeTimeSeconds, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Payload m8146setNotBeforeTimeSeconds(Long l) {
            return (Payload) super.setNotBeforeTimeSeconds(l);
        }

        /* renamed from: setIssuedAtTimeSeconds, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Payload m8138setIssuedAtTimeSeconds(Long l) {
            return (Payload) super.setIssuedAtTimeSeconds(l);
        }

        /* renamed from: setIssuer, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Payload m8140setIssuer(String str) {
            return (Payload) super.setIssuer(str);
        }

        /* renamed from: setAudience, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Payload m8131setAudience(Object obj) {
            return (Payload) super.setAudience(obj);
        }

        /* renamed from: setJwtId, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Payload m8142setJwtId(String str) {
            return (Payload) super.setJwtId(str);
        }

        /* renamed from: setType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Payload m8150setType(String str) {
            return (Payload) super.setType(str);
        }

        /* renamed from: setSubject, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Payload m8148setSubject(String str) {
            return (Payload) super.setSubject(str);
        }

        /* renamed from: set, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Payload m8128set(String str, Object obj) {
            return (Payload) super.set(str, obj);
        }

        /* renamed from: clone, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Payload m8124clone() {
            return (Payload) super.clone();
        }
    }
}
