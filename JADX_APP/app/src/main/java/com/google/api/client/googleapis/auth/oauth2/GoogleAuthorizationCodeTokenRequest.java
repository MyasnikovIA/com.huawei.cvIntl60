package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest;
import com.google.api.client.auth.oauth2.ClientParametersAuthentication;
import com.google.api.client.auth.oauth2.TokenRequest;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

/* loaded from: classes.dex */
public class GoogleAuthorizationCodeTokenRequest extends AuthorizationCodeTokenRequest {
    public /* bridge */ /* synthetic */ AuthorizationCodeTokenRequest setScopes(Collection collection) {
        return m8081setScopes((Collection<String>) collection);
    }

    /* renamed from: setScopes */
    public /* bridge */ /* synthetic */ TokenRequest m8080setScopes(Collection collection) {
        return m8081setScopes((Collection<String>) collection);
    }

    public GoogleAuthorizationCodeTokenRequest(HttpTransport httpTransport, JsonFactory jsonFactory, String str, String str2, String str3, String str4) {
        this(httpTransport, jsonFactory, GoogleOAuthConstants.TOKEN_SERVER_URL, str, str2, str3, str4);
    }

    public GoogleAuthorizationCodeTokenRequest(HttpTransport httpTransport, JsonFactory jsonFactory, String str, String str2, String str3, String str4, String str5) {
        super(httpTransport, jsonFactory, new GenericUrl(str), str4);
        m8072setClientAuthentication((HttpExecuteInterceptor) new ClientParametersAuthentication(str2, str3));
        setRedirectUri(str5);
    }

    /* renamed from: setRequestInitializer, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeTokenRequest m8078setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
        return (GoogleAuthorizationCodeTokenRequest) super.setRequestInitializer(httpRequestInitializer);
    }

    /* renamed from: setTokenServerUrl, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeTokenRequest m8082setTokenServerUrl(GenericUrl genericUrl) {
        return (GoogleAuthorizationCodeTokenRequest) super.setTokenServerUrl(genericUrl);
    }

    /* renamed from: setScopes */
    public GoogleAuthorizationCodeTokenRequest m8081setScopes(Collection<String> collection) {
        return (GoogleAuthorizationCodeTokenRequest) super.setScopes(collection);
    }

    /* renamed from: setGrantType, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeTokenRequest m8075setGrantType(String str) {
        return (GoogleAuthorizationCodeTokenRequest) super.setGrantType(str);
    }

    /* renamed from: setClientAuthentication, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeTokenRequest m8072setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
        Preconditions.checkNotNull(httpExecuteInterceptor);
        return (GoogleAuthorizationCodeTokenRequest) super.setClientAuthentication(httpExecuteInterceptor);
    }

    public GoogleAuthorizationCodeTokenRequest setCode(String str) {
        return (GoogleAuthorizationCodeTokenRequest) super.setCode(str);
    }

    public GoogleAuthorizationCodeTokenRequest setRedirectUri(String str) {
        Preconditions.checkNotNull(str);
        return (GoogleAuthorizationCodeTokenRequest) super.setRedirectUri(str);
    }

    public GoogleTokenResponse execute() {
        return (GoogleTokenResponse) executeUnparsed().parseAs(GoogleTokenResponse.class);
    }

    /* renamed from: set, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeTokenRequest m8071set(String str, Object obj) {
        return (GoogleAuthorizationCodeTokenRequest) super.set(str, obj);
    }
}
