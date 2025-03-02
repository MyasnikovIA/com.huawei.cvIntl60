package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.AuthorizationRequestUrl;
import com.google.api.client.auth.oauth2.BrowserClientRequestUrl;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

/* loaded from: classes.dex */
public class GoogleBrowserClientRequestUrl extends BrowserClientRequestUrl {

    @Key("approval_prompt")
    private String approvalPrompt;

    public /* bridge */ /* synthetic */ AuthorizationRequestUrl setResponseTypes(Collection collection) {
        return m8098setResponseTypes((Collection<String>) collection);
    }

    /* renamed from: setResponseTypes */
    public /* bridge */ /* synthetic */ BrowserClientRequestUrl m8097setResponseTypes(Collection collection) {
        return m8098setResponseTypes((Collection<String>) collection);
    }

    public /* bridge */ /* synthetic */ AuthorizationRequestUrl setScopes(Collection collection) {
        return m8100setScopes((Collection<String>) collection);
    }

    /* renamed from: setScopes */
    public /* bridge */ /* synthetic */ BrowserClientRequestUrl m8099setScopes(Collection collection) {
        return m8100setScopes((Collection<String>) collection);
    }

    public GoogleBrowserClientRequestUrl(String str, String str2, Collection<String> collection) {
        super(GoogleOAuthConstants.AUTHORIZATION_SERVER_URL, str);
        m8095setRedirectUri(str2);
        m8100setScopes(collection);
    }

    public GoogleBrowserClientRequestUrl(GoogleClientSecrets googleClientSecrets, String str, Collection<String> collection) {
        this(googleClientSecrets.getDetails().getClientId(), str, collection);
    }

    public final String getApprovalPrompt() {
        return this.approvalPrompt;
    }

    public GoogleBrowserClientRequestUrl setApprovalPrompt(String str) {
        this.approvalPrompt = str;
        return this;
    }

    /* renamed from: setResponseTypes */
    public GoogleBrowserClientRequestUrl m8098setResponseTypes(Collection<String> collection) {
        return (GoogleBrowserClientRequestUrl) super.setResponseTypes(collection);
    }

    /* renamed from: setRedirectUri, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleBrowserClientRequestUrl m8095setRedirectUri(String str) {
        return (GoogleBrowserClientRequestUrl) super.setRedirectUri(str);
    }

    /* renamed from: setScopes */
    public GoogleBrowserClientRequestUrl m8100setScopes(Collection<String> collection) {
        Preconditions.checkArgument(collection.iterator().hasNext());
        return (GoogleBrowserClientRequestUrl) super.setScopes(collection);
    }

    /* renamed from: setClientId, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleBrowserClientRequestUrl m8093setClientId(String str) {
        return (GoogleBrowserClientRequestUrl) super.setClientId(str);
    }

    /* renamed from: setState, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleBrowserClientRequestUrl m8101setState(String str) {
        return (GoogleBrowserClientRequestUrl) super.setState(str);
    }

    /* renamed from: set, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleBrowserClientRequestUrl m8092set(String str, Object obj) {
        return (GoogleBrowserClientRequestUrl) super.set(str, obj);
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleBrowserClientRequestUrl m8088clone() {
        return (GoogleBrowserClientRequestUrl) super.clone();
    }
}
