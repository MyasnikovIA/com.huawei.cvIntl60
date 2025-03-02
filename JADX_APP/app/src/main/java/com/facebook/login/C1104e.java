package com.facebook.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.login.LoginClient;
import com.facebook.p089a.C1032g;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.login.e */
/* loaded from: classes.dex */
class C1104e {

    /* renamed from: a */
    private final C1032g f5731a;

    /* renamed from: b */
    private String f5732b;

    /* renamed from: c */
    private String f5733c;

    C1104e(Context context, String str) {
        PackageInfo packageInfo;
        this.f5732b = str;
        this.f5731a = C1032g.m5845b(context, str);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo("com.facebook.katana", 0)) != null) {
                this.f5733c = packageInfo.versionName;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* renamed from: a */
    public String m6359a() {
        return this.f5732b;
    }

    /* renamed from: a */
    static Bundle m6358a(String str) {
        Bundle bundle = new Bundle();
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        bundle.putString("0_auth_logger_id", str);
        bundle.putString("3_method", "");
        bundle.putString("2_result", "");
        bundle.putString("5_error_message", "");
        bundle.putString("4_error_code", "");
        bundle.putString("6_extras", "");
        return bundle;
    }

    /* renamed from: a */
    public void m6360a(LoginClient.Request request) {
        Bundle m6358a = m6358a(request.m6302e());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("login_behavior", request.m6299b().toString());
            jSONObject.put("request_code", LoginClient.m6267d());
            jSONObject.put("permissions", TextUtils.join(",", request.m6296a()));
            jSONObject.put("default_audience", request.m6300c().toString());
            jSONObject.put("isReauthorize", request.m6303f());
            if (this.f5733c != null) {
                jSONObject.put("facebookVersion", this.f5733c);
            }
            m6358a.putString("6_extras", jSONObject.toString());
        } catch (JSONException e) {
        }
        this.f5731a.m5856a("fb_mobile_login_start", (Double) null, m6358a);
    }

    /* renamed from: a */
    public void m6364a(String str, Map<String, String> map, LoginClient.Result.EnumC1094a enumC1094a, Map<String, String> map2, Exception exc) {
        Bundle m6358a = m6358a(str);
        if (enumC1094a != null) {
            m6358a.putString("2_result", enumC1094a.m6316a());
        }
        if (exc != null && exc.getMessage() != null) {
            m6358a.putString("5_error_message", exc.getMessage());
        }
        JSONObject jSONObject = !map.isEmpty() ? new JSONObject(map) : null;
        if (map2 != null) {
            JSONObject jSONObject2 = jSONObject == null ? new JSONObject() : jSONObject;
            try {
                for (Map.Entry<String, String> entry : map2.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                jSONObject = jSONObject2;
            } catch (JSONException e) {
                jSONObject = jSONObject2;
            }
        }
        if (jSONObject != null) {
            m6358a.putString("6_extras", jSONObject.toString());
        }
        this.f5731a.m5856a("fb_mobile_login_complete", (Double) null, m6358a);
    }

    /* renamed from: a */
    public void m6361a(String str, String str2) {
        Bundle m6358a = m6358a(str);
        m6358a.putString("3_method", str2);
        this.f5731a.m5856a("fb_mobile_login_method_start", (Double) null, m6358a);
    }

    /* renamed from: a */
    public void m6363a(String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        Bundle m6358a = m6358a(str);
        if (str3 != null) {
            m6358a.putString("2_result", str3);
        }
        if (str4 != null) {
            m6358a.putString("5_error_message", str4);
        }
        if (str5 != null) {
            m6358a.putString("4_error_code", str5);
        }
        if (map != null && !map.isEmpty()) {
            m6358a.putString("6_extras", new JSONObject(map).toString());
        }
        m6358a.putString("3_method", str2);
        this.f5731a.m5856a("fb_mobile_login_method_complete", (Double) null, m6358a);
    }

    /* renamed from: b */
    public void m6365b(String str, String str2) {
        Bundle m6358a = m6358a(str);
        m6358a.putString("3_method", str2);
        this.f5731a.m5856a("fb_mobile_login_method_not_tried", (Double) null, m6358a);
    }

    /* renamed from: c */
    public void m6366c(String str, String str2) {
        m6362a(str, str2, "");
    }

    /* renamed from: a */
    public void m6362a(String str, String str2, String str3) {
        Bundle m6358a = m6358a("");
        m6358a.putString("2_result", LoginClient.Result.EnumC1094a.ERROR.m6316a());
        m6358a.putString("5_error_message", str2);
        m6358a.putString("3_method", str3);
        this.f5731a.m5856a(str, (Double) null, m6358a);
    }
}
