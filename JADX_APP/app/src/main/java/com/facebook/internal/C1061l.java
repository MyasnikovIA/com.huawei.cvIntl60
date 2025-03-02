package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.C1074k;
import com.facebook.GraphRequest;
import com.facebook.internal.C1060k;
import com.facebook.p089a.p090a.p091a.C1009e;
import com.facebook.p089a.p092b.C1019d;
import com.facebook.p089a.p092b.C1020e;
import com.facebook.p089a.p092b.C1021f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.internal.l */
/* loaded from: classes.dex */
public final class C1061l {

    /* renamed from: a */
    private static final String f5493a = C1061l.class.getSimpleName();

    /* renamed from: b */
    private static final String[] f5494b = {"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "gdpv4_chrome_custom_tabs_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "auto_event_mapping_android", "seamless_login", "smart_login_bookmark_icon_url", "smart_login_menu_icon_url"};

    /* renamed from: c */
    private static final Map<String, C1060k> f5495c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final AtomicReference<a> f5496d = new AtomicReference<>(a.NOT_LOADED);

    /* renamed from: e */
    private static final ConcurrentLinkedQueue<b> f5497e = new ConcurrentLinkedQueue<>();

    /* renamed from: f */
    private static boolean f5498f = false;

    /* renamed from: g */
    private static boolean f5499g = false;

    /* renamed from: h */
    @Nullable
    private static JSONArray f5500h = null;

    /* renamed from: com.facebook.internal.l$a */
    enum a {
        NOT_LOADED,
        LOADING,
        SUCCESS,
        ERROR
    }

    /* renamed from: com.facebook.internal.l$b */
    public interface b {
        /* renamed from: a */
        void m5993a();

        /* renamed from: a */
        void m5994a(C1060k c1060k);
    }

    /* renamed from: a */
    public static void m5982a() {
        Context m6181f = C1074k.m6181f();
        String m6185j = C1074k.m6185j();
        if (C1070u.m6098a(m6185j)) {
            f5496d.set(a.ERROR);
            m5992g();
        } else if (f5495c.containsKey(m6185j)) {
            f5496d.set(a.SUCCESS);
            m5992g();
        } else {
            if (!(f5496d.compareAndSet(a.NOT_LOADED, a.LOADING) || f5496d.compareAndSet(a.ERROR, a.LOADING))) {
                m5992g();
            } else {
                C1074k.m6179d().execute(new Runnable() { // from class: com.facebook.internal.l.1

                    /* renamed from: a */
                    final /* synthetic */ Context f5501a;

                    /* renamed from: b */
                    final /* synthetic */ String f5502b;

                    /* renamed from: c */
                    final /* synthetic */ String f5503c;

                    AnonymousClass1(Context m6181f2, String str, String m6185j2) {
                        m6181f = m6181f2;
                        format = str;
                        m6185j = m6185j2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        JSONObject jSONObject;
                        C1060k c1060k = null;
                        SharedPreferences sharedPreferences = m6181f.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
                        String string = sharedPreferences.getString(format, null);
                        if (!C1070u.m6098a(string)) {
                            try {
                                jSONObject = new JSONObject(string);
                            } catch (JSONException e) {
                                C1070u.m6088a("FacebookSDK", (Exception) e);
                                jSONObject = null;
                            }
                            if (jSONObject != null) {
                                c1060k = C1061l.m5984b(m6185j, jSONObject);
                            }
                        }
                        JSONObject m5988c = C1061l.m5988c(m6185j);
                        if (m5988c != null) {
                            C1061l.m5984b(m6185j, m5988c);
                            sharedPreferences.edit().putString(format, m5988c.toString()).apply();
                        }
                        if (c1060k != null) {
                            String m5973j = c1060k.m5973j();
                            if (!C1061l.f5498f && m5973j != null && m5973j.length() > 0) {
                                boolean unused = C1061l.f5498f = true;
                                Log.w(C1061l.f5493a, m5973j);
                            }
                        }
                        C1059j.m5963a(m6185j, true);
                        C1019d.m5749a();
                        C1021f.m5757a();
                        C1061l.f5496d.set(C1061l.f5495c.containsKey(m6185j) ? a.SUCCESS : a.ERROR);
                        C1061l.m5992g();
                    }
                });
            }
        }
    }

    /* renamed from: com.facebook.internal.l$1 */
    static class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Context f5501a;

        /* renamed from: b */
        final /* synthetic */ String f5502b;

        /* renamed from: c */
        final /* synthetic */ String f5503c;

        AnonymousClass1(Context m6181f2, String str, String m6185j2) {
            m6181f = m6181f2;
            format = str;
            m6185j = m6185j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONObject jSONObject;
            C1060k c1060k = null;
            SharedPreferences sharedPreferences = m6181f.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
            String string = sharedPreferences.getString(format, null);
            if (!C1070u.m6098a(string)) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e) {
                    C1070u.m6088a("FacebookSDK", (Exception) e);
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    c1060k = C1061l.m5984b(m6185j, jSONObject);
                }
            }
            JSONObject m5988c = C1061l.m5988c(m6185j);
            if (m5988c != null) {
                C1061l.m5984b(m6185j, m5988c);
                sharedPreferences.edit().putString(format, m5988c.toString()).apply();
            }
            if (c1060k != null) {
                String m5973j = c1060k.m5973j();
                if (!C1061l.f5498f && m5973j != null && m5973j.length() > 0) {
                    boolean unused = C1061l.f5498f = true;
                    Log.w(C1061l.f5493a, m5973j);
                }
            }
            C1059j.m5963a(m6185j, true);
            C1019d.m5749a();
            C1021f.m5757a();
            C1061l.f5496d.set(C1061l.f5495c.containsKey(m6185j) ? a.SUCCESS : a.ERROR);
            C1061l.m5992g();
        }
    }

    @Nullable
    /* renamed from: a */
    public static C1060k m5978a(String str) {
        if (str != null) {
            return f5495c.get(str);
        }
        return null;
    }

    /* renamed from: g */
    public static synchronized void m5992g() {
        synchronized (C1061l.class) {
            a aVar = f5496d.get();
            if (!a.NOT_LOADED.equals(aVar) && !a.LOADING.equals(aVar)) {
                C1060k c1060k = f5495c.get(C1074k.m6185j());
                Handler handler = new Handler(Looper.getMainLooper());
                if (a.ERROR.equals(aVar)) {
                    while (!f5497e.isEmpty()) {
                        handler.post(new Runnable() { // from class: com.facebook.internal.l.2
                            AnonymousClass2() {
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                b.this.m5993a();
                            }
                        });
                    }
                } else {
                    while (!f5497e.isEmpty()) {
                        handler.post(new Runnable() { // from class: com.facebook.internal.l.3

                            /* renamed from: b */
                            final /* synthetic */ C1060k f5506b;

                            AnonymousClass3(C1060k c1060k2) {
                                c1060k = c1060k2;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                b.this.m5994a(c1060k);
                            }
                        });
                    }
                }
            }
        }
    }

    /* renamed from: com.facebook.internal.l$2 */
    static class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.m5993a();
        }
    }

    /* renamed from: com.facebook.internal.l$3 */
    static class AnonymousClass3 implements Runnable {

        /* renamed from: b */
        final /* synthetic */ C1060k f5506b;

        AnonymousClass3(C1060k c1060k2) {
            c1060k = c1060k2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.m5994a(c1060k);
        }
    }

    @Nullable
    /* renamed from: a */
    public static C1060k m5980a(String str, boolean z) {
        if (!z && f5495c.containsKey(str)) {
            return f5495c.get(str);
        }
        JSONObject m5988c = m5988c(str);
        if (m5988c == null) {
            return null;
        }
        C1060k m5984b = m5984b(str, m5988c);
        if (str.equals(C1074k.m6185j())) {
            f5496d.set(a.SUCCESS);
            m5992g();
            return m5984b;
        }
        return m5984b;
    }

    /* renamed from: b */
    public static C1060k m5984b(String str, JSONObject jSONObject) {
        C1056g m5951a;
        JSONArray optJSONArray = jSONObject.optJSONArray("android_sdk_error_categories");
        if (optJSONArray == null) {
            m5951a = C1056g.m5950a();
        } else {
            m5951a = C1056g.m5951a(optJSONArray);
        }
        int optInt = jSONObject.optInt("app_events_feature_bitmask", 0);
        boolean z = (optInt & 8) != 0;
        boolean z2 = (optInt & 16) != 0;
        boolean z3 = (optInt & 32) != 0;
        boolean z4 = (optInt & 256) != 0;
        JSONArray optJSONArray2 = jSONObject.optJSONArray("auto_event_mapping_android");
        f5500h = optJSONArray2;
        if (f5500h != null && C1062m.m5996b()) {
            C1009e.m5656a(optJSONArray2.toString());
        }
        C1060k c1060k = new C1060k(jSONObject.optBoolean("supports_implicit_sdk_logging", false), jSONObject.optString("gdpv4_nux_content", ""), jSONObject.optBoolean("gdpv4_nux_enabled", false), jSONObject.optBoolean("gdpv4_chrome_custom_tabs_enabled", false), jSONObject.optInt("app_events_session_timeout", C1020e.m5755a()), EnumC1069t.m6061a(jSONObject.optLong("seamless_login")), m5981a(jSONObject.optJSONObject("android_dialog_configs")), z, m5951a, jSONObject.optString("smart_login_bookmark_icon_url"), jSONObject.optString("smart_login_menu_icon_url"), z2, z3, optJSONArray2, jSONObject.optString("sdk_update_message"), z4);
        f5495c.put(str, c1060k);
        return c1060k;
    }

    /* renamed from: c */
    public static JSONObject m5988c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(",", new ArrayList(Arrays.asList(f5494b))));
        GraphRequest m5537a = GraphRequest.m5537a((AccessToken) null, str, (GraphRequest.InterfaceC0995b) null);
        m5537a.m5582a(true);
        m5537a.m5577a(bundle);
        return m5537a.m5590i().m6420b();
    }

    /* renamed from: a */
    private static Map<String, Map<String, C1060k.a>> m5981a(JSONObject jSONObject) {
        JSONArray optJSONArray;
        HashMap hashMap = new HashMap();
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= optJSONArray.length()) {
                    break;
                }
                C1060k.a m5974a = C1060k.a.m5974a(optJSONArray.optJSONObject(i2));
                if (m5974a != null) {
                    String m5976a = m5974a.m5976a();
                    Map map = (Map) hashMap.get(m5976a);
                    if (map == null) {
                        map = new HashMap();
                        hashMap.put(m5976a, map);
                    }
                    map.put(m5974a.m5977b(), m5974a);
                }
                i = i2 + 1;
            }
        }
        return hashMap;
    }
}
