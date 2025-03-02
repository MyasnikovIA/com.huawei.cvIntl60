package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.C1048h;
import com.facebook.EnumC1043c;
import com.facebook.internal.C1070u;
import com.facebook.login.LoginClient;
import com.facebook.p089a.C1032g;
import com.google.android.exoplayer.C1167C;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
abstract class LoginMethodHandler implements Parcelable {

    /* renamed from: a */
    Map<String, String> f5694a;

    /* renamed from: b */
    protected LoginClient f5695b;

    /* renamed from: a */
    abstract String mo6202a();

    /* renamed from: a */
    abstract boolean mo6205a(LoginClient.Request request);

    LoginMethodHandler(LoginClient loginClient) {
        this.f5695b = loginClient;
    }

    LoginMethodHandler(Parcel parcel) {
        this.f5694a = C1070u.m6081a(parcel);
    }

    /* renamed from: a */
    void m6324a(LoginClient loginClient) {
        if (this.f5695b != null) {
            throw new C1048h("Can't set LoginClient if it is already set.");
        }
        this.f5695b = loginClient;
    }

    /* renamed from: a */
    boolean mo6204a(int i, int i2, Intent intent) {
        return false;
    }

    /* renamed from: e */
    boolean mo6327e() {
        return false;
    }

    /* renamed from: b */
    void mo6257b() {
    }

    /* renamed from: a */
    void mo6203a(JSONObject jSONObject) {
    }

    /* renamed from: a */
    protected String m6323a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", mo6202a());
            mo6203a(jSONObject);
        } catch (JSONException e) {
            Log.w("LoginMethodHandler", "Error creating client state json: " + e.getMessage());
        }
        return jSONObject.toString();
    }

    /* renamed from: a */
    protected void m6325a(String str, Object obj) {
        if (this.f5694a == null) {
            this.f5694a = new HashMap();
        }
        this.f5694a.put(str, obj == null ? null : obj.toString());
    }

    /* renamed from: b */
    protected void m6326b(String str) {
        String m6301d = this.f5695b.m6283c().m6301d();
        C1032g m5845b = C1032g.m5845b(this.f5695b.m6280b(), m6301d);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", m6301d);
        m5845b.m5856a("fb_dialogs_web_login_dialog_complete", (Double) null, bundle);
    }

    /* renamed from: a */
    static AccessToken m6320a(Bundle bundle, EnumC1043c enumC1043c, String str) {
        Date m6078a = C1070u.m6078a(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        Date m6078a2 = C1070u.m6078a(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
        if (C1070u.m6098a(string)) {
            return null;
        }
        return new AccessToken(string, str, bundle.getString("com.facebook.platform.extra.USER_ID"), stringArrayList, null, enumC1043c, m6078a, new Date(), m6078a2);
    }

    /* renamed from: a */
    public static AccessToken m6321a(Collection<String> collection, Bundle bundle, EnumC1043c enumC1043c, String str) {
        Date m6078a = C1070u.m6078a(bundle, "expires_in", new Date());
        String string = bundle.getString("access_token");
        Date m6078a2 = C1070u.m6078a(bundle, "data_access_expiration_time", new Date(0L));
        String string2 = bundle.getString("granted_scopes");
        Collection<String> arrayList = !C1070u.m6098a(string2) ? new ArrayList<>(Arrays.asList(string2.split(","))) : collection;
        String string3 = bundle.getString("denied_scopes");
        ArrayList arrayList2 = !C1070u.m6098a(string3) ? new ArrayList(Arrays.asList(string3.split(","))) : null;
        if (C1070u.m6098a(string)) {
            return null;
        }
        return new AccessToken(string, str, m6322c(bundle.getString("signed_request")), arrayList, arrayList2, enumC1043c, m6078a, new Date(), m6078a2);
    }

    /* renamed from: c */
    static String m6322c(String str) {
        if (str == null || str.isEmpty()) {
            throw new C1048h("Authorization response does not contain the signed_request");
        }
        try {
            String[] split = str.split("\\.");
            if (split.length == 2) {
                return new JSONObject(new String(Base64.decode(split[1], 0), C1167C.UTF8_NAME)).getString("user_id");
            }
        } catch (UnsupportedEncodingException e) {
        } catch (JSONException e2) {
        }
        throw new C1048h("Failed to retrieve user_id from signed_request");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C1070u.m6085a(parcel, this.f5694a);
    }
}
