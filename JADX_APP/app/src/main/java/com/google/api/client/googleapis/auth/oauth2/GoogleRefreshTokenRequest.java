package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.ClientParametersAuthentication;
import com.google.api.client.auth.oauth2.RefreshTokenRequest;
import com.google.api.client.auth.oauth2.TokenRequest;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import java.util.Collection;

/* loaded from: classes.dex */
public class GoogleRefreshTokenRequest extends RefreshTokenRequest {
    public /* bridge */ /* synthetic */ RefreshTokenRequest setScopes(Collection collection) {
        return m8169setScopes((Collection<String>) collection);
    }

    /* renamed from: setScopes */
    public /* bridge */ /* synthetic */ TokenRequest m8168setScopes(Collection collection) {
        return m8169setScopes((Collection<String>) collection);
    }

    public GoogleRefreshTokenRequest(HttpTransport httpTransport, JsonFactory jsonFactory, String str, String str2, String str3) {
        super(httpTransport, jsonFactory, new GenericUrl(GoogleOAuthConstants.TOKEN_SERVER_URL), str);
        m8161setClientAuthentication((HttpExecuteInterceptor) new ClientParametersAuthentication(str2, str3));
    }

    /* renamed from: setRequestInitializer, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleRefreshTokenRequest m8166setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
        return (GoogleRefreshTokenRequest) super.setRequestInitializer(httpRequestInitializer);
    }

    /* renamed from: setTokenServerUrl, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleRefreshTokenRequest m8170setTokenServerUrl(GenericUrl genericUrl) {
        return (GoogleRefreshTokenRequest) super.setTokenServerUrl(genericUrl);
    }

    /* renamed from: setScopes */
    public GoogleRefreshTokenRequest m8169setScopes(Collection<String> collection) {
        return (GoogleRefreshTokenRequest) super.setScopes(collection);
    }

    /* renamed from: setGrantType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleRefreshTokenRequest m8163setGrantType(String str) {
        return (GoogleRefreshTokenRequest) super.setGrantType(str);
    }

    /* renamed from: setClientAuthentication, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleRefreshTokenRequest m8161setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
        return (GoogleRefreshTokenRequest) super.setClientAuthentication(httpExecuteInterceptor);
    }

    public GoogleRefreshTokenRequest setRefreshToken(String str) {
        return (GoogleRefreshTokenRequest) super.setRefreshToken(str);
    }

    public GoogleTokenResponse execute() {
        return (GoogleTokenResponse) executeUnparsed().parseAs(GoogleTokenResponse.class);
    }

    /* renamed from: set, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleRefreshTokenRequest m8160set(String str, Object obj) {
        return (GoogleRefreshTokenRequest) super.set(str, obj);
    }
}
