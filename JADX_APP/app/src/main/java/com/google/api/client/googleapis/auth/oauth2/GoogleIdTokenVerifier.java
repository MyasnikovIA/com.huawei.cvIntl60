package com.google.api.client.googleapis.auth.oauth2;

import com.google.android.gms.auth.api.credentials.IdentityProviders;
import com.google.api.client.auth.openidconnect.IdTokenVerifier;
import com.google.api.client.googleapis.auth.oauth2.GooglePublicKeysManager;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Preconditions;
import java.security.PublicKey;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

@Beta
/* loaded from: classes.dex */
public class GoogleIdTokenVerifier extends IdTokenVerifier {
    private final GooglePublicKeysManager publicKeys;

    public GoogleIdTokenVerifier(HttpTransport httpTransport, JsonFactory jsonFactory) {
        this(new Builder(httpTransport, jsonFactory));
    }

    public GoogleIdTokenVerifier(GooglePublicKeysManager googlePublicKeysManager) {
        this(new Builder(googlePublicKeysManager));
    }

    protected GoogleIdTokenVerifier(Builder builder) {
        super(builder);
        this.publicKeys = builder.publicKeys;
    }

    public final GooglePublicKeysManager getPublicKeysManager() {
        return this.publicKeys;
    }

    public final HttpTransport getTransport() {
        return this.publicKeys.getTransport();
    }

    public final JsonFactory getJsonFactory() {
        return this.publicKeys.getJsonFactory();
    }

    @Deprecated
    public final String getPublicCertsEncodedUrl() {
        return this.publicKeys.getPublicCertsEncodedUrl();
    }

    @Deprecated
    public final List<PublicKey> getPublicKeys() {
        return this.publicKeys.getPublicKeys();
    }

    @Deprecated
    public final long getExpirationTimeMilliseconds() {
        return this.publicKeys.getExpirationTimeMilliseconds();
    }

    public boolean verify(GoogleIdToken googleIdToken) {
        if (!super.verify(googleIdToken)) {
            return false;
        }
        Iterator<PublicKey> it = this.publicKeys.getPublicKeys().iterator();
        while (it.hasNext()) {
            if (googleIdToken.verifySignature(it.next())) {
                return true;
            }
        }
        return false;
    }

    public GoogleIdToken verify(String str) {
        GoogleIdToken parse = GoogleIdToken.parse(getJsonFactory(), str);
        if (verify(parse)) {
            return parse;
        }
        return null;
    }

    @Deprecated
    public GoogleIdTokenVerifier loadPublicCerts() {
        this.publicKeys.refresh();
        return this;
    }

    @Beta
    public static class Builder extends IdTokenVerifier.Builder {
        GooglePublicKeysManager publicKeys;

        public /* bridge */ /* synthetic */ IdTokenVerifier.Builder setAudience(Collection collection) {
            return m8153setAudience((Collection<String>) collection);
        }

        public /* bridge */ /* synthetic */ IdTokenVerifier.Builder setIssuers(Collection collection) {
            return m8156setIssuers((Collection<String>) collection);
        }

        public Builder(HttpTransport httpTransport, JsonFactory jsonFactory) {
            this(new GooglePublicKeysManager(httpTransport, jsonFactory));
        }

        public Builder(GooglePublicKeysManager googlePublicKeysManager) {
            this.publicKeys = (GooglePublicKeysManager) Preconditions.checkNotNull(googlePublicKeysManager);
            m8156setIssuers((Collection<String>) Arrays.asList("accounts.google.com", IdentityProviders.GOOGLE));
        }

        public GoogleIdTokenVerifier build() {
            return new GoogleIdTokenVerifier(this);
        }

        public final GooglePublicKeysManager getPublicCerts() {
            return this.publicKeys;
        }

        public final HttpTransport getTransport() {
            return this.publicKeys.getTransport();
        }

        public final JsonFactory getJsonFactory() {
            return this.publicKeys.getJsonFactory();
        }

        @Deprecated
        public final String getPublicCertsEncodedUrl() {
            return this.publicKeys.getPublicCertsEncodedUrl();
        }

        @Deprecated
        public Builder setPublicCertsEncodedUrl(String str) {
            this.publicKeys = new GooglePublicKeysManager.Builder(getTransport(), getJsonFactory()).setPublicCertsEncodedUrl(str).setClock(this.publicKeys.getClock()).build();
            return this;
        }

        public Builder setIssuer(String str) {
            return (Builder) super.setIssuer(str);
        }

        /* renamed from: setIssuers */
        public Builder m8156setIssuers(Collection<String> collection) {
            return (Builder) super.setIssuers(collection);
        }

        /* renamed from: setAudience */
        public Builder m8153setAudience(Collection<String> collection) {
            return (Builder) super.setAudience(collection);
        }

        public Builder setAcceptableTimeSkewSeconds(long j) {
            return (Builder) super.setAcceptableTimeSkewSeconds(j);
        }

        public Builder setClock(Clock clock) {
            return (Builder) super.setClock(clock);
        }
    }
}
