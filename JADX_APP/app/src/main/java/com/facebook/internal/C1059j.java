package com.facebook.internal;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.facebook.AccessToken;
import com.facebook.C1074k;
import com.facebook.GraphRequest;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.internal.j */
/* loaded from: classes.dex */
public class C1059j {

    /* renamed from: a */
    private static final String f5470a = C1059j.class.getCanonicalName();

    /* renamed from: b */
    private static final Map<String, JSONObject> f5471b = new ConcurrentHashMap();

    /* renamed from: c */
    @Nullable
    private static Long f5472c = null;

    @Nullable
    /* renamed from: a */
    public static JSONObject m5963a(String str, boolean z) {
        if (!z && f5471b.containsKey(str)) {
            return f5471b.get(str);
        }
        JSONObject m5961a = m5961a(str);
        if (m5961a == null) {
            return null;
        }
        C1074k.m6181f().getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(String.format("com.facebook.internal.APP_GATEKEEPERS.%s", str), m5961a.toString()).apply();
        return m5962a(str, m5961a);
    }

    @Nullable
    /* renamed from: a */
    private static JSONObject m5961a(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("platform", "android");
        bundle.putString("sdk_version", C1074k.m6183h());
        bundle.putString("fields", "gatekeepers");
        GraphRequest m5537a = GraphRequest.m5537a((AccessToken) null, String.format("%s/%s", str, "mobile_sdk_gk"), (GraphRequest.InterfaceC0995b) null);
        m5537a.m5582a(true);
        m5537a.m5577a(bundle);
        return m5537a.m5590i().m6420b();
    }

    /* renamed from: a */
    private static synchronized JSONObject m5962a(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        synchronized (C1059j.class) {
            if (f5471b.containsKey(str)) {
                jSONObject2 = f5471b.get(str);
            } else {
                jSONObject2 = new JSONObject();
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("data");
            JSONObject jSONObject3 = null;
            if (optJSONArray != null) {
                jSONObject3 = optJSONArray.optJSONObject(0);
            }
            if (jSONObject3 != null && jSONObject3.optJSONArray("gatekeepers") != null) {
                JSONArray optJSONArray2 = jSONObject3.optJSONArray("gatekeepers");
                for (int i = 0; i < optJSONArray2.length(); i++) {
                    try {
                        JSONObject jSONObject4 = optJSONArray2.getJSONObject(i);
                        jSONObject2.put(jSONObject4.getString("key"), jSONObject4.getBoolean("value"));
                    } catch (JSONException e) {
                        C1070u.m6088a("FacebookSDK", (Exception) e);
                    }
                }
            }
            f5471b.put(str, jSONObject2);
        }
        return jSONObject2;
    }
}
