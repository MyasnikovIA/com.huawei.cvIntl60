package com.google.api.client.googleapis.compute;

import com.google.api.client.auth.oauth2.BearerToken;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.CredentialRefreshListener;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.googleapis.auth.oauth2.OAuth2Utils;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

@Beta
/* loaded from: classes.dex */
public class ComputeCredential extends Credential {
    public static final String TOKEN_SERVER_ENCODED_URL = OAuth2Utils.getMetadataServerUrl() + "/computeMetadata/v1/instance/service-accounts/default/token";

    public ComputeCredential(HttpTransport httpTransport, JsonFactory jsonFactory) {
        this(new Builder(httpTransport, jsonFactory));
    }

    protected ComputeCredential(Builder builder) {
        super(builder);
    }

    protected TokenResponse executeRefreshToken() {
        HttpRequest buildGetRequest = getTransport().createRequestFactory().buildGetRequest(new GenericUrl(getTokenServerEncodedUrl()));
        buildGetRequest.setParser(new JsonObjectParser(getJsonFactory()));
        buildGetRequest.getHeaders().set("Metadata-Flavor", "Google");
        return (TokenResponse) buildGetRequest.execute().parseAs(TokenResponse.class);
    }

    @Beta
    public static class Builder extends Credential.Builder {
        public /* bridge */ /* synthetic */ Credential.Builder setRefreshListeners(Collection collection) {
            return m8189setRefreshListeners((Collection<CredentialRefreshListener>) collection);
        }

        public Builder(HttpTransport httpTransport, JsonFactory jsonFactory) {
            super(BearerToken.authorizationHeaderAccessMethod());
            setTransport(httpTransport);
            setJsonFactory(jsonFactory);
            setTokenServerEncodedUrl(ComputeCredential.TOKEN_SERVER_ENCODED_URL);
        }

        public ComputeCredential build() {
            return new ComputeCredential(this);
        }

        public Builder setTransport(HttpTransport httpTransport) {
            return (Builder) super.setTransport((HttpTransport) Preconditions.checkNotNull(httpTransport));
        }

        public Builder setClock(Clock clock) {
            return (Builder) super.setClock(clock);
        }

        public Builder setJsonFactory(JsonFactory jsonFactory) {
            return (Builder) super.setJsonFactory((JsonFactory) Preconditions.checkNotNull(jsonFactory));
        }

        public Builder setTokenServerUrl(GenericUrl genericUrl) {
            return (Builder) super.setTokenServerUrl((GenericUrl) Preconditions.checkNotNull(genericUrl));
        }

        public Builder setTokenServerEncodedUrl(String str) {
            return (Builder) super.setTokenServerEncodedUrl((String) Preconditions.checkNotNull(str));
        }

        public Builder setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
            Preconditions.checkArgument(httpExecuteInterceptor == null);
            return this;
        }

        public Builder setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
            return (Builder) super.setRequestInitializer(httpRequestInitializer);
        }

        public Builder addRefreshListener(CredentialRefreshListener credentialRefreshListener) {
            return (Builder) super.addRefreshListener(credentialRefreshListener);
        }

        /* renamed from: setRefreshListeners */
        public Builder m8189setRefreshListeners(Collection<CredentialRefreshListener> collection) {
            return (Builder) super.setRefreshListeners(collection);
        }
    }
}
