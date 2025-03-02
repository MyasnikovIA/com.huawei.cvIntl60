package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.C1048h;
import com.facebook.C1073j;
import com.facebook.C1074k;
import com.facebook.C1108m;
import com.facebook.EnumC1043c;
import com.facebook.FacebookRequestError;
import com.facebook.internal.C1070u;
import com.facebook.login.LoginClient;
import java.util.Locale;

/* loaded from: classes.dex */
abstract class WebLoginMethodHandler extends LoginMethodHandler {

    /* renamed from: c */
    private String f5697c;

    /* renamed from: b_ */
    abstract EnumC1043c mo6206b_();

    /* renamed from: d */
    private static final String m6333d() {
        return "fb" + C1074k.m6185j() + "://authorize";
    }

    WebLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    WebLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    /* renamed from: c */
    protected String mo6207c() {
        return null;
    }

    /* renamed from: b */
    protected Bundle m6338b(LoginClient.Request request) {
        Bundle bundle = new Bundle();
        if (!C1070u.m6099a(request.m6296a())) {
            String join = TextUtils.join(",", request.m6296a());
            bundle.putString("scope", join);
            m6325a("scope", join);
        }
        bundle.putString("default_audience", request.m6300c().m6345a());
        bundle.putString("state", m6323a(request.m6302e()));
        AccessToken m5496a = AccessToken.m5496a();
        String m5506d = m5496a != null ? m5496a.m5506d() : null;
        if (m5506d != null && m5506d.equals(m6335f())) {
            bundle.putString("access_token", m5506d);
            m6325a("access_token", "1");
        } else {
            C1070u.m6104b(this.f5695b.m6280b());
            m6325a("access_token", "0");
        }
        return bundle;
    }

    /* renamed from: a */
    protected Bundle m6336a(Bundle bundle, LoginClient.Request request) {
        bundle.putString("redirect_uri", m6333d());
        bundle.putString("client_id", request.m6301d());
        LoginClient loginClient = this.f5695b;
        bundle.putString("e2e", LoginClient.m6269m());
        bundle.putString("response_type", "token,signed_request");
        bundle.putString("return_scopes", "true");
        bundle.putString("auth_type", request.m6306i());
        if (mo6207c() != null) {
            bundle.putString("sso", mo6207c());
        }
        return bundle;
    }

    /* renamed from: a */
    protected void m6337a(LoginClient.Request request, Bundle bundle, C1048h c1048h) {
        String str;
        LoginClient.Result m6313a;
        this.f5697c = null;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.f5697c = bundle.getString("e2e");
            }
            try {
                AccessToken a2 = m6321a(request.m6296a(), bundle, mo6206b_(), request.m6301d());
                m6313a = LoginClient.Result.m6310a(this.f5695b.m6283c(), a2);
                CookieSyncManager.createInstance(this.f5695b.m6280b()).sync();
                m6334d(a2.m5506d());
            } catch (C1048h e) {
                m6313a = LoginClient.Result.m6312a(this.f5695b.m6283c(), null, e.getMessage());
            }
        } else if (c1048h instanceof C1073j) {
            m6313a = LoginClient.Result.m6311a(this.f5695b.m6283c(), "User canceled log in.");
        } else {
            this.f5697c = null;
            String message = c1048h.getMessage();
            if (c1048h instanceof C1108m) {
                FacebookRequestError m6392a = ((C1108m) c1048h).m6392a();
                str = String.format(Locale.ROOT, "%d", Integer.valueOf(m6392a.m5529b()));
                message = m6392a.toString();
            } else {
                str = null;
            }
            m6313a = LoginClient.Result.m6313a(this.f5695b.m6283c(), null, message, str);
        }
        if (!C1070u.m6098a(this.f5697c)) {
            m6326b(this.f5697c);
        }
        this.f5695b.m6276a(m6313a);
    }

    /* renamed from: f */
    private String m6335f() {
        return this.f5695b.m6280b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }

    /* renamed from: d */
    private void m6334d(String str) {
        this.f5695b.m6280b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str).apply();
    }
}
