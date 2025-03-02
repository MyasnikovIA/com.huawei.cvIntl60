package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl;
import com.google.api.client.auth.oauth2.AuthorizationRequestUrl;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

/* loaded from: classes.dex */
public class GoogleAuthorizationCodeRequestUrl extends AuthorizationCodeRequestUrl {

    @Key("access_type")
    private String accessType;

    @Key("approval_prompt")
    private String approvalPrompt;

    public /* bridge */ /* synthetic */ AuthorizationCodeRequestUrl setResponseTypes(Collection collection) {
        return m8063setResponseTypes((Collection<String>) collection);
    }

    /* renamed from: setResponseTypes */
    public /* bridge */ /* synthetic */ AuthorizationRequestUrl m8062setResponseTypes(Collection collection) {
        return m8063setResponseTypes((Collection<String>) collection);
    }

    public /* bridge */ /* synthetic */ AuthorizationCodeRequestUrl setScopes(Collection collection) {
        return m8065setScopes((Collection<String>) collection);
    }

    /* renamed from: setScopes */
    public /* bridge */ /* synthetic */ AuthorizationRequestUrl m8064setScopes(Collection collection) {
        return m8065setScopes((Collection<String>) collection);
    }

    public GoogleAuthorizationCodeRequestUrl(String str, String str2, Collection<String> collection) {
        this(GoogleOAuthConstants.AUTHORIZATION_SERVER_URL, str, str2, collection);
    }

    public GoogleAuthorizationCodeRequestUrl(String str, String str2, String str3, Collection<String> collection) {
        super(str, str2);
        m8060setRedirectUri(str3);
        m8065setScopes(collection);
    }

    public GoogleAuthorizationCodeRequestUrl(GoogleClientSecrets googleClientSecrets, String str, Collection<String> collection) {
        this(googleClientSecrets.getDetails().getClientId(), str, collection);
    }

    public final String getApprovalPrompt() {
        return this.approvalPrompt;
    }

    public GoogleAuthorizationCodeRequestUrl setApprovalPrompt(String str) {
        this.approvalPrompt = str;
        return this;
    }

    public final String getAccessType() {
        return this.accessType;
    }

    public GoogleAuthorizationCodeRequestUrl setAccessType(String str) {
        this.accessType = str;
        return this;
    }

    /* renamed from: setResponseTypes */
    public GoogleAuthorizationCodeRequestUrl m8063setResponseTypes(Collection<String> collection) {
        return (GoogleAuthorizationCodeRequestUrl) super.setResponseTypes(collection);
    }

    /* renamed from: setRedirectUri, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeRequestUrl m8060setRedirectUri(String str) {
        Preconditions.checkNotNull(str);
        return (GoogleAuthorizationCodeRequestUrl) super.setRedirectUri(str);
    }

    /* renamed from: setScopes */
    public GoogleAuthorizationCodeRequestUrl m8065setScopes(Collection<String> collection) {
        Preconditions.checkArgument(collection.iterator().hasNext());
        return (GoogleAuthorizationCodeRequestUrl) super.setScopes(collection);
    }

    /* renamed from: setClientId, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeRequestUrl m8058setClientId(String str) {
        return (GoogleAuthorizationCodeRequestUrl) super.setClientId(str);
    }

    /* renamed from: setState, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeRequestUrl m8066setState(String str) {
        return (GoogleAuthorizationCodeRequestUrl) super.setState(str);
    }

    /* renamed from: set, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeRequestUrl m8057set(String str, Object obj) {
        return (GoogleAuthorizationCodeRequestUrl) super.set(str, obj);
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public GoogleAuthorizationCodeRequestUrl m8053clone() {
        return (GoogleAuthorizationCodeRequestUrl) super.clone();
    }
}
