package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.BearerToken;
import com.google.api.client.auth.oauth2.ClientParametersAuthentication;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.CredentialRefreshListener;
import com.google.api.client.auth.oauth2.TokenRequest;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.util.Utils;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Joiner;
import com.google.api.client.util.PemReader;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.SecurityUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Collection;
import java.util.Collections;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public class GoogleCredential extends Credential {
    static final String SERVICE_ACCOUNT_FILE_TYPE = "service_account";
    static final String USER_FILE_TYPE = "authorized_user";

    @Beta
    private static DefaultCredentialProvider defaultCredentialProvider = new DefaultCredentialProvider();
    private String serviceAccountId;
    private PrivateKey serviceAccountPrivateKey;
    private String serviceAccountPrivateKeyId;
    private Collection<String> serviceAccountScopes;
    private String serviceAccountUser;

    @Beta
    public static GoogleCredential getApplicationDefault() {
        return getApplicationDefault(Utils.getDefaultTransport(), Utils.getDefaultJsonFactory());
    }

    @Beta
    public static GoogleCredential getApplicationDefault(HttpTransport httpTransport, JsonFactory jsonFactory) {
        Preconditions.checkNotNull(httpTransport);
        Preconditions.checkNotNull(jsonFactory);
        return defaultCredentialProvider.getDefaultCredential(httpTransport, jsonFactory);
    }

    @Beta
    public static GoogleCredential fromStream(InputStream inputStream) {
        return fromStream(inputStream, Utils.getDefaultTransport(), Utils.getDefaultJsonFactory());
    }

    @Beta
    public static GoogleCredential fromStream(InputStream inputStream, HttpTransport httpTransport, JsonFactory jsonFactory) {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(httpTransport);
        Preconditions.checkNotNull(jsonFactory);
        GenericJson genericJson = (GenericJson) new JsonObjectParser(jsonFactory).parseAndClose(inputStream, OAuth2Utils.UTF_8, GenericJson.class);
        String str = (String) genericJson.get(IjkMediaMeta.IJKM_KEY_TYPE);
        if (str == null) {
            throw new IOException("Error reading credentials from stream, 'type' field not specified.");
        }
        if (USER_FILE_TYPE.equals(str)) {
            return fromStreamUser(genericJson, httpTransport, jsonFactory);
        }
        if (SERVICE_ACCOUNT_FILE_TYPE.equals(str)) {
            return fromStreamServiceAccount(genericJson, httpTransport, jsonFactory);
        }
        throw new IOException(String.format("Error reading credentials from stream, 'type' value '%s' not recognized. Expecting '%s' or '%s'.", str, USER_FILE_TYPE, SERVICE_ACCOUNT_FILE_TYPE));
    }

    public GoogleCredential() {
        this(new Builder());
    }

    protected GoogleCredential(Builder builder) {
        super(builder);
        if (builder.serviceAccountPrivateKey == null) {
            Preconditions.checkArgument(builder.serviceAccountId == null && builder.serviceAccountScopes == null && builder.serviceAccountUser == null);
            return;
        }
        this.serviceAccountId = (String) Preconditions.checkNotNull(builder.serviceAccountId);
        this.serviceAccountScopes = Collections.unmodifiableCollection(builder.serviceAccountScopes);
        this.serviceAccountPrivateKey = builder.serviceAccountPrivateKey;
        this.serviceAccountPrivateKeyId = builder.serviceAccountPrivateKeyId;
        this.serviceAccountUser = builder.serviceAccountUser;
    }

    public GoogleCredential setAccessToken(String str) {
        return (GoogleCredential) super.setAccessToken(str);
    }

    public GoogleCredential setRefreshToken(String str) {
        if (str != null) {
            Preconditions.checkArgument((getJsonFactory() == null || getTransport() == null || getClientAuthentication() == null) ? false : true, "Please use the Builder and call setJsonFactory, setTransport and setClientSecrets");
        }
        return (GoogleCredential) super.setRefreshToken(str);
    }

    public GoogleCredential setExpirationTimeMilliseconds(Long l) {
        return (GoogleCredential) super.setExpirationTimeMilliseconds(l);
    }

    public GoogleCredential setExpiresInSeconds(Long l) {
        return (GoogleCredential) super.setExpiresInSeconds(l);
    }

    public GoogleCredential setFromTokenResponse(TokenResponse tokenResponse) {
        return (GoogleCredential) super.setFromTokenResponse(tokenResponse);
    }

    @Beta
    protected TokenResponse executeRefreshToken() {
        if (this.serviceAccountPrivateKey == null) {
            return super.executeRefreshToken();
        }
        JsonWebSignature.Header header = new JsonWebSignature.Header();
        header.setAlgorithm("RS256");
        header.setType("JWT");
        header.setKeyId(this.serviceAccountPrivateKeyId);
        JsonWebToken.Payload payload = new JsonWebToken.Payload();
        long currentTimeMillis = getClock().currentTimeMillis();
        payload.setIssuer(this.serviceAccountId);
        payload.setAudience(getTokenServerEncodedUrl());
        payload.setIssuedAtTimeSeconds(Long.valueOf(currentTimeMillis / 1000));
        payload.setExpirationTimeSeconds(Long.valueOf((currentTimeMillis / 1000) + 3600));
        payload.setSubject(this.serviceAccountUser);
        payload.put("scope", (Object) Joiner.m6684on(' ').join(this.serviceAccountScopes));
        try {
            String signUsingRsaSha256 = JsonWebSignature.signUsingRsaSha256(this.serviceAccountPrivateKey, getJsonFactory(), header, payload);
            TokenRequest tokenRequest = new TokenRequest(getTransport(), getJsonFactory(), new GenericUrl(getTokenServerEncodedUrl()), "urn:ietf:params:oauth:grant-type:jwt-bearer");
            tokenRequest.put("assertion", signUsingRsaSha256);
            return tokenRequest.execute();
        } catch (GeneralSecurityException e) {
            IOException iOException = new IOException();
            iOException.initCause(e);
            throw iOException;
        }
    }

    public final String getServiceAccountId() {
        return this.serviceAccountId;
    }

    public final Collection<String> getServiceAccountScopes() {
        return this.serviceAccountScopes;
    }

    public final String getServiceAccountScopesAsString() {
        if (this.serviceAccountScopes == null) {
            return null;
        }
        return Joiner.m6684on(' ').join(this.serviceAccountScopes);
    }

    public final PrivateKey getServiceAccountPrivateKey() {
        return this.serviceAccountPrivateKey;
    }

    @Beta
    public final String getServiceAccountPrivateKeyId() {
        return this.serviceAccountPrivateKeyId;
    }

    public final String getServiceAccountUser() {
        return this.serviceAccountUser;
    }

    @Beta
    public boolean createScopedRequired() {
        if (this.serviceAccountPrivateKey == null) {
            return false;
        }
        return this.serviceAccountScopes == null || this.serviceAccountScopes.isEmpty();
    }

    @Beta
    public GoogleCredential createScoped(Collection<String> collection) {
        return this.serviceAccountPrivateKey == null ? this : new Builder().setServiceAccountPrivateKey(this.serviceAccountPrivateKey).setServiceAccountPrivateKeyId(this.serviceAccountPrivateKeyId).setServiceAccountId(this.serviceAccountId).setServiceAccountUser(this.serviceAccountUser).setServiceAccountScopes(collection).setTokenServerEncodedUrl(getTokenServerEncodedUrl()).setTransport(getTransport()).setJsonFactory(getJsonFactory()).setClock(getClock()).build();
    }

    public static class Builder extends Credential.Builder {
        String serviceAccountId;
        PrivateKey serviceAccountPrivateKey;
        String serviceAccountPrivateKeyId;
        Collection<String> serviceAccountScopes;
        String serviceAccountUser;

        public /* bridge */ /* synthetic */ Credential.Builder setRefreshListeners(Collection collection) {
            return m8113setRefreshListeners((Collection<CredentialRefreshListener>) collection);
        }

        public Builder() {
            super(BearerToken.authorizationHeaderAccessMethod());
            setTokenServerEncodedUrl(GoogleOAuthConstants.TOKEN_SERVER_URL);
        }

        @Override // 
        public GoogleCredential build() {
            return new GoogleCredential(this);
        }

        @Override // 
        public Builder setTransport(HttpTransport httpTransport) {
            return (Builder) super.setTransport(httpTransport);
        }

        @Override // 
        public Builder setJsonFactory(JsonFactory jsonFactory) {
            return (Builder) super.setJsonFactory(jsonFactory);
        }

        @Override // 
        public Builder setClock(Clock clock) {
            return (Builder) super.setClock(clock);
        }

        public Builder setClientSecrets(String str, String str2) {
            setClientAuthentication((HttpExecuteInterceptor) new ClientParametersAuthentication(str, str2));
            return this;
        }

        public Builder setClientSecrets(GoogleClientSecrets googleClientSecrets) {
            GoogleClientSecrets.Details details = googleClientSecrets.getDetails();
            setClientAuthentication((HttpExecuteInterceptor) new ClientParametersAuthentication(details.getClientId(), details.getClientSecret()));
            return this;
        }

        public final String getServiceAccountId() {
            return this.serviceAccountId;
        }

        public Builder setServiceAccountId(String str) {
            this.serviceAccountId = str;
            return this;
        }

        public final Collection<String> getServiceAccountScopes() {
            return this.serviceAccountScopes;
        }

        public Builder setServiceAccountScopes(Collection<String> collection) {
            this.serviceAccountScopes = collection;
            return this;
        }

        public final PrivateKey getServiceAccountPrivateKey() {
            return this.serviceAccountPrivateKey;
        }

        public Builder setServiceAccountPrivateKey(PrivateKey privateKey) {
            this.serviceAccountPrivateKey = privateKey;
            return this;
        }

        @Beta
        public final String getServiceAccountPrivateKeyId() {
            return this.serviceAccountPrivateKeyId;
        }

        @Beta
        public Builder setServiceAccountPrivateKeyId(String str) {
            this.serviceAccountPrivateKeyId = str;
            return this;
        }

        public Builder setServiceAccountPrivateKeyFromP12File(File file) {
            this.serviceAccountPrivateKey = SecurityUtils.loadPrivateKeyFromKeyStore(SecurityUtils.getPkcs12KeyStore(), new FileInputStream(file), "notasecret", "privatekey", "notasecret");
            return this;
        }

        @Beta
        public Builder setServiceAccountPrivateKeyFromPemFile(File file) {
            this.serviceAccountPrivateKey = SecurityUtils.getRsaKeyFactory().generatePrivate(new PKCS8EncodedKeySpec(PemReader.readFirstSectionAndClose(new FileReader(file), "PRIVATE KEY").getBase64DecodedBytes()));
            return this;
        }

        public final String getServiceAccountUser() {
            return this.serviceAccountUser;
        }

        public Builder setServiceAccountUser(String str) {
            this.serviceAccountUser = str;
            return this;
        }

        public Builder setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
            return (Builder) super.setRequestInitializer(httpRequestInitializer);
        }

        public Builder addRefreshListener(CredentialRefreshListener credentialRefreshListener) {
            return (Builder) super.addRefreshListener(credentialRefreshListener);
        }

        /* renamed from: setRefreshListeners */
        public Builder m8113setRefreshListeners(Collection<CredentialRefreshListener> collection) {
            return (Builder) super.setRefreshListeners(collection);
        }

        public Builder setTokenServerUrl(GenericUrl genericUrl) {
            return (Builder) super.setTokenServerUrl(genericUrl);
        }

        public Builder setTokenServerEncodedUrl(String str) {
            return (Builder) super.setTokenServerEncodedUrl(str);
        }

        @Override // 
        public Builder setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
            return (Builder) super.setClientAuthentication(httpExecuteInterceptor);
        }
    }

    @Beta
    private static GoogleCredential fromStreamUser(GenericJson genericJson, HttpTransport httpTransport, JsonFactory jsonFactory) {
        String str = (String) genericJson.get("client_id");
        String str2 = (String) genericJson.get("client_secret");
        String str3 = (String) genericJson.get("refresh_token");
        if (str == null || str2 == null || str3 == null) {
            throw new IOException("Error reading user credential from stream,  expecting 'client_id', 'client_secret' and 'refresh_token'.");
        }
        GoogleCredential build = new Builder().setClientSecrets(str, str2).setTransport(httpTransport).setJsonFactory(jsonFactory).build();
        build.setRefreshToken(str3);
        build.refreshToken();
        return build;
    }

    @Beta
    private static GoogleCredential fromStreamServiceAccount(GenericJson genericJson, HttpTransport httpTransport, JsonFactory jsonFactory) {
        String str = (String) genericJson.get("client_id");
        String str2 = (String) genericJson.get("client_email");
        String str3 = (String) genericJson.get("private_key");
        String str4 = (String) genericJson.get("private_key_id");
        if (str == null || str2 == null || str3 == null || str4 == null) {
            throw new IOException("Error reading service account credential from stream, expecting  'client_id', 'client_email', 'private_key' and 'private_key_id'.");
        }
        Builder serviceAccountPrivateKeyId = new Builder().setTransport(httpTransport).setJsonFactory(jsonFactory).setServiceAccountId(str2).setServiceAccountScopes(Collections.emptyList()).setServiceAccountPrivateKey(privateKeyFromPkcs8(str3)).setServiceAccountPrivateKeyId(str4);
        String str5 = (String) genericJson.get("token_uri");
        if (str5 != null) {
            serviceAccountPrivateKeyId.setTokenServerEncodedUrl(str5);
        }
        return serviceAccountPrivateKeyId.build();
    }

    @Beta
    private static PrivateKey privateKeyFromPkcs8(String str) {
        PemReader.Section readFirstSectionAndClose = PemReader.readFirstSectionAndClose(new StringReader(str), "PRIVATE KEY");
        if (readFirstSectionAndClose == null) {
            throw new IOException("Invalid PKCS8 data.");
        }
        try {
            return SecurityUtils.getRsaKeyFactory().generatePrivate(new PKCS8EncodedKeySpec(readFirstSectionAndClose.getBase64DecodedBytes()));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            throw ((IOException) OAuth2Utils.exceptionWithCause(new IOException("Unexpected exception reading PKCS data"), e));
        }
    }
}
